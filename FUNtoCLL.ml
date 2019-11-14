(* Dans les expressions, remplace les paramètres formels d'une fonction par 
   le calcul d'adresse correspondant. *)
let rec translate_expression expr param_table = match expr with
  |IMPExpr.Immediate(e) -> IMPExpr.Immediate(e)
  |Name(s) -> 
  |Unop(unop,translate_expression e)-> Unop(unop,e)
  |Binop(bnop, e1,e2) -> Binop(bnop,e1,e2)






(* Instructions ne faisant pas référence aux fonctions : traduction iso *)
(* Pour Call et Return, appliquer le protocole *)
let rec translate_instruction instr param_table = match instr with 
  | FUNInsr.Nop -> CLLInstr.Nop  
  | FUNInstr.Print(e) -> CLLInstr.Print(e)
  | FUNInstr.Exit -> CLLInstr.Exit
    
  | FUNInstr.Write(e1, e2) -> CLLInstr.Write(e1,e2)
   
      
  | FUNInstr.If(c, s1, s2) -> CLLInstr.If(e,s1,s2)
    
  | FUNInstr.While(c, s) -> CLLInstr.While(c,s)
  
    
  | Call(d, f, args) ->
    Call(translate_expression d param_table,
         translate_expression f param_table,
         List.map (fun a -> translate_expression a param_table) args)
      
  | Return(e) ->
    Return(translate_expression e param_table)

and translate_sequence seq alloc_table =
  List.map (fun i -> translate_instruction i param_table) seq


    
let translate_function_definition fdef =
  failwith "not implemented"

    
let translate_program prog =
  { CLL.text = List.map translate_function_definition FUN.(prog.text);
    CLL.data = failwith "not implemented" }
