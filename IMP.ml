(*le tŷpe programme comment étant une partie texte qui est une liste d'instruction et une partie data qu'est une liste de tuple string * int*)
type program = { text: IMPInstr.sequence; data: (string * int) list }
(*affiche le programme imp en texte*)
let to_string prog =
  ".text\n" ^ (IMPInstr.sequence_to_string prog.text)
  ^ ".data\n" ^ (ART.data_to_string prog.data)
