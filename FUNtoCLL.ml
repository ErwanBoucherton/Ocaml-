(* Dans les expressions, remplace les paramètres formels d'une fonction par 
   le calcul d'adresse correspondant. *)
let rec translate_expression expr param_table = match expr with
  | IMPExpr.Immediate(i) -> IMPExpr.Immediate(i)
  | IMPExpr.Name(e)-> if Hashtbl.mem param_table e then
  		IMPExpr.(Binop(Op.Add, Deref(Name "frame_pointer"), Immediate(Hashtbl.find param_table e)))
	else 
		IMPExpr.Name(e)
  | IMPExpr.Unop(o,e) -> IMPExpr.Unop(o,(translate_expression e param_table))
  | IMPExpr.Binop(b, e1, e2) -> IMPExpr.Binop(b, translate_expression e1 param_table, translate_expression e2 param_table)
  | IMPExpr.Deref(e)-> IMPExpr.Deref(translate_expression e param_table)

(* Instructions ne faisant pas référence aux fonctions : traduction iso *)
(* Pour Call et Return, appliquer le protocole *)
let rec translate_instruction instr param_table = match instr with
  |FUNInstr.Nop -> [CLLInstr.Nop]
  |FUNInstr.Print(e) -> [CLLInstr.Print(translate_expression e param_table)]
  |FUNInstr.Exit -> [CLLInstr.Exit]
  |FUNInstr.Write(e1,e2) -> [CLLInstr.Write((translate_expression e1 param_table), (translate_expression e2 param_table))]
  |FUNInstr.If(e,s1,s2) -> [CLLInstr.If(translate_expression e param_table, translate_sequence s1 param_table, translate_sequence s2 param_table)]
  |FUNInstr.While(e,s) -> [CLLInstr.While(translate_expression e param_table, translate_sequence s param_table)]
  |FUNInstr.Call(le,f,list_params) ->
		(*Protocole 1*)
		List.flatten (List.map (fun e -> CLLInstr.push (translate_expression e param_table) ) list_params)
    @ [CLLInstr.Call(translate_expression f param_table)]
		(*Protocole 5
		retire les paramètres de la pile*)
		@ [CLLInstr.Write(IMPExpr.Name "stack_pointer", IMPExpr.Binop(Op.Add,(IMPExpr.Deref(IMPExpr.Name "stack_pointer")),(IMPExpr.Immediate (List.length list_params)))) ]
		(*récupère la valeur placée dans function_result pour la transférer dans la va-
riable cible.*)
		@ [CLLInstr.Write((translate_expression le param_table), IMPExpr.Deref (IMPExpr.Name "function_result"))]
	|FUNInstr.Return(e)->
		(*Protocole 4*)
		(*place la valeur renvoyée dans la variable globale function_result*)
		[CLLInstr.Write(IMPExpr.Name "function_result",translate_expression e param_table)]
		(*exécute une fin de procédure CLL*)
		@ [CLLInstr.Return]

and translate_sequence seq param_table=
	(*List.flatten(List.map translate_instruction seq param_table)*)
	List.flatten (List.map (fun i -> translate_instruction i param_table) seq)

(* Ajoute au code habituel l'initialisation des variables locales *)
let translate_function_definition fdef =
    let param_table = Hashtbl.create 17 in
      List.iteri (fun i e ->Hashtbl.add param_table e (List.length FUN.(fdef.parameters) + 1 - i) ) FUN.(fdef.parameters);
      {CLL.name = FUN.(fdef.name);
       CLL.code = translate_sequence FUN.(fdef.code) param_table}



    
let translate_program prog =
  { CLL.text = List.map translate_function_definition FUN.(prog.text);
    CLL.data = ("function_result",0)::FUN.(prog.data);}
