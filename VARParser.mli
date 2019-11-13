
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | STAR
  | SLASH
  | SET
  | SEMI
  | RP
  | RETURN
  | PRINT
  | PRCT
  | PLUS
  | OR
  | NOT
  | NOP
  | NEQ
  | MINUS
  | LT
  | LP
  | LE
  | LABEL of (string)
  | INT of (int)
  | IF
  | GT
  | GE
  | EXIT
  | EQ
  | EOF
  | END
  | ELSE
  | COMMA
  | BOOL of (bool)
  | BEGIN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (VAR.program)
