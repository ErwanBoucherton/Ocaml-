(* définie une fonction comme étant une structure comportant un nom et une liste d'instruction*)
type function_definition = {
  name: string;
  code: CLLInstr.sequence;
}
(*un programme est une liste de fonction et une liste de date en tuple *)    
type program = { text: function_definition list; data: (string * int) list }



(* prends une définition de fonction et renvoie la fonction sous forme nomdelafonction {séquence egalement mis en string} *)        
let fdef_to_string fdef =
  fdef.name ^ "() {\n"
  ^ (CLLInstr.sequence_to_string fdef.code)
  ^ "}\n\n"

(*fonction recursive qui permet de mettre en string une liste de fonction *)
let rec fdefs_to_string = function
  | [] -> ""
  | fdef :: fdefs -> (fdef_to_string fdef) ^ (fdefs_to_string fdefs)

 (*met le programme en string*)   
let prog_to_string prog =
  ".text\n" ^ (fdefs_to_string prog.text)
  ^ ".data\n" ^ (ART.data_to_string prog.data)
