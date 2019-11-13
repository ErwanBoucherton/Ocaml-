(**
   Note : lors de la génération d'étiquettes il faut s'assurer de ne pas
   créer  de conflits avec les étiquettes introduites à d'autres étapes de
   la compilation, par exemple pour la traduction des instructions if et
   while de IMP vers ART.
*)



let new_return_label =
  let cpt = ref 0 in
  fun () -> incr cpt; Printf.sprintf "_return_label_%i" !cpt


(**
   Traduction des instructions CLL en séquences d'instructions IMP.
   Le travail principal concerne les instructions Call et Return. Ces deux
   cas étant traduits par plusieurs instructions IMP, la fonction suivante
   renvoie une liste d'instructions IMP.

   La ligne 
     let rec translate_instruction = function
   est strictement équivalente à
     let rec translate_instruction instr = match instr with
*)
let rec translate_instruction = function
  (* La traduction des instructions communes à CLL et IMP est directe :
     on renvoie une liste contenant une unique instruction équivalente à
     l'instruction traduite. Les expressions sont inchangées. *)
  | CLLInstr.Nop -> [ IMPInstr.Nop ]
  | CLLInstr.Print(e) -> [ IMPInstr.Print(e) ]
  | CLLInstr.Exit -> [IMPInstr.Exit]
  | CLLInstr.If(e,s1,s2) ->  [ IMPInstr.If(e,translate_sequence s1,translate_sequence s2) ]
  | CLLInstr.While(e,s ) -> [ IMPInstr.While(e,translate_sequence s)  ]
  | CLLInstr.Write(e1,e2) -> [IMPInstr.Write(e1,e2)]
  | _ -> (* autres cas simples à traiter de même *)
failwith "not implemented"

  (* Instruction d'appel, dont la traduction va contenir toutes les étapes
     du protocole à réaliser par l'appelant. *)
  | CLLInstr.Call(e) ->
    (* Création d'une nouvelle étiquette pour désigner la position où il
       faudra revenir juste après l'appel. *)
    let return = new_return_label() in
    [
      (* Protocole, étape 1 : enregistrement de l'adresse de retour. *)
      IMPInstr.Write(IMPExpr.Name "return_address", IMPExpr.Name return);
      (* Appel à proprement parler : on passe la main à l'appelé. *)
      IMPInstr.Goto(e);
      (* protocole 2 : on stock dans une nouvelle cellule de la pile la valeurs return_adress et met à jour frame_pointer*)
      (* Point auquel revenir après l'appel. *)
      IMPInstr.Label(return);
      (* Protocole, étape 5 : rien de particulier, seulement continuer. *)
    ]

  | CLLInstr.Return ->
   [ IMPInstr.Write(IMPExpr.Name "stack_pointer", IMPExpr.Deref(IMPExpr.Name "frame_pointer")) ]
  @(IMPInstr.pop (IMPExpr.Deref (IMPExpr.Name "return_address")))
  @ (IMPInstr.pop (IMPExpr.Deref (IMPExpr.Name "frame_pointer")))
  @ [ IMPInstr.Goto(IMPExpr.Deref(IMPExpr.Name "return_address")) ]



(**
   Traduction d'une séquence : rien de particulier, à part l'aplatissement
   de la liste de listes obtenues en traduisant chaque instruction à la
   suite de l'autre. 
*)
and translate_sequence s =
  List.flatten (List.map translate_instruction s)

(**
   Le code qui sera produit pour la fonction fdef.
   C'est là qu'on retrouvera les parties du protocole à faire réaliser par
   l'appelé.
*)
let translate_function_definition fdef =
  (* Récupération du nom de la fonction. *)
  let f_name = CLL.(fdef.name) in
  (* Étiquette portant le nom de la fonction, où sauter à la fin de l'étape
     1 du protocole. *)
  [ IMPInstr.Label(f_name) ]

  (* Protocole, étape 2 : enregistrement sur la pile des valeurs courantes
     de frame_pointer et return_address pour former une nouvelle cellule de
     la chaîne d'appels. La valeur sauvegardée de frame_pointer correspond
     à la cellule de la fonction appelante, et la valeur sauvegardé de
     return_address correspond à celle qui a été définie juste avant à
     l'étape 1. *)
  @ (IMPInstr.push (IMPExpr.Deref (IMPExpr.Name "frame_pointer")))
  @ (IMPInstr.push (IMPExpr.Deref (IMPExpr.Name "return_address")))
  @ [ IMPInstr.Write(IMPExpr.Name "frame_pointer", IMPExpr.Deref(IMPExpr.Name "stack_pointer")) ]

  (* Protocole, étape 3 : exécuter le corps de la fonction. *)
  @ (translate_sequence CLL.(fdef.code))

  (* Protocole, étape 4 : défaire ce qui a été fait à l'étape 2 (notez la
     symétrie !). *)
  @ [ IMPInstr.Write(IMPExpr.Name "stack_pointer", IMPExpr.Deref(IMPExpr.Name "frame_pointer")) ]
  @ (IMPInstr.pop (IMPExpr.Deref (IMPExpr.Name "return_address")))
  @ (IMPInstr.pop (IMPExpr.Deref (IMPExpr.Name "frame_pointer")))

  (* Passer la main à nouveau à l'appelant. *)
  @ [ IMPInstr.Goto(IMPExpr.Deref(IMPExpr.Name "return_address")) ]

    
let translate_program prog = {
  IMP.text =
    List.flatten (List.map translate_function_definition CLL.(prog.text));
  IMP.data =  CLL.(prog.data) ;
    
}
