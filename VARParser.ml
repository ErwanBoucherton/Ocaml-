
module MenhirBasics = struct
  
  exception Error
  
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
    | LABEL of (
# 17 "VARParser.mly"
       (string)
# 30 "VARParser.ml"
  )
    | INT of (
# 15 "VARParser.mly"
       (int)
# 35 "VARParser.ml"
  )
    | IF
    | GT
    | GE
    | EXIT
    | EQ
    | EOF
    | END
    | ELSE
    | COMMA
    | BOOL of (
# 16 "VARParser.mly"
       (bool)
# 49 "VARParser.ml"
  )
    | BEGIN
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState106
  | MenhirState102
  | MenhirState92
  | MenhirState87
  | MenhirState85
  | MenhirState82
  | MenhirState79
  | MenhirState77
  | MenhirState75
  | MenhirState70
  | MenhirState66
  | MenhirState64
  | MenhirState63
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState34
  | MenhirState32
  | MenhirState27
  | MenhirState26
  | MenhirState25
  | MenhirState24
  | MenhirState23
  | MenhirState21
  | MenhirState20
  | MenhirState15
  | MenhirState13
  | MenhirState11
  | MenhirState4
  | MenhirState0

# 1 "VARParser.mly"
  

  open Lexing
  open VAR
  open FUNInstr
  open IMPExpr
  open Op


# 118 "VARParser.ml"

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expression__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv405 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv401 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv399 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (le : 'tv_left_expression)), _, (f : 'tv_left_expression)), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expression__)) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_instruction = let args =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 143 "VARParser.ml"
          
        in
        
# 80 "VARParser.mly"
    ( Call(le, f, args) )
# 149 "VARParser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv403 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)) : 'freshtv406)

and _menhir_reduce5 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_left_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (le : 'tv_left_expression)) = _menhir_stack in
    let _v : 'tv_expression = 
# 86 "VARParser.mly"
                     ( Deref(le) )
# 166 "VARParser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_terminated_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_terminated_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_terminated_instruction) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXIT ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | IF ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | NOP ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | PRINT ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | RETURN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | WHILE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | END ->
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv398)

and _menhir_goto_separated_nonempty_list_COMMA_LABEL_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_LABEL_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv391 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 209 "VARParser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_LABEL_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 217 "VARParser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_LABEL_) : 'tv_separated_nonempty_list_COMMA_LABEL_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 17 "VARParser.mly"
       (string)
# 224 "VARParser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 230 "VARParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)) : 'freshtv392)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_LABEL_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_LABEL_) : 'tv_separated_nonempty_list_COMMA_LABEL_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_LABEL__ = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 245 "VARParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_LABEL__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv394)) : 'freshtv396)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expression_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expression_) : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expression__ = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 266 "VARParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)) : 'freshtv384)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv385 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expression_) : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expression)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 283 "VARParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
    | _ ->
        _menhir_fail ()

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXIT ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | IF ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | NOP ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | PRINT ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | RETURN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | WHILE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | END ->
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_goto_list_terminated_instruction_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_terminated_instruction_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv343 * _menhir_state * 'tv_terminated_instruction) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * _menhir_state * 'tv_terminated_instruction) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_terminated_instruction)), _, (xs : 'tv_list_terminated_instruction_)) = _menhir_stack in
        let _v : 'tv_list_terminated_instruction_ = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 643 "VARParser.ml"
         in
        _menhir_goto_list_terminated_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv363 * _menhir_state) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (seq : 'tv_list_terminated_instruction_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_block = 
# 65 "VARParser.mly"
                                             ( seq )
# 664 "VARParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_block) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState77 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv349 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv345 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BEGIN ->
                        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState79
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv346)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv347 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
            | MenhirState79 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv353 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv351 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expression)), _, (s1 : 'tv_block)), _, (s2 : 'tv_block)) = _menhir_stack in
                let _6 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_terminated_instruction = 
# 70 "VARParser.mly"
                                               ( If(e, s1, s2) )
# 710 "VARParser.ml"
                 in
                _menhir_goto_terminated_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
            | MenhirState63 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv357 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv355 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expression)), _, (s : 'tv_block)) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_terminated_instruction = 
# 71 "VARParser.mly"
                                   ( While(e, s) )
# 725 "VARParser.ml"
                 in
                _menhir_goto_terminated_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
            | _ ->
                _menhir_fail ()) : 'freshtv360)) : 'freshtv362)) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv365 * _menhir_state) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv379 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 742 "VARParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__))) * _menhir_state * 'tv_list_data_declaration_) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv375 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 752 "VARParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__))) * _menhir_state * 'tv_list_data_declaration_) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv373 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 759 "VARParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__))) * _menhir_state * 'tv_list_data_declaration_) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, (name : (
# 17 "VARParser.mly"
       (string)
# 764 "VARParser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_LABEL__)), _, (locals : 'tv_list_data_declaration_)), _, (code : 'tv_list_terminated_instruction_)) = _menhir_stack in
            let _8 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_function_definition = let parameters =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 775 "VARParser.ml"
              
            in
            
# 61 "VARParser.mly"
    ( { name; code; parameters; locals } )
# 781 "VARParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_function_definition) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_function_definition) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LABEL _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | EOF ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv370)) : 'freshtv372)) : 'freshtv374)) : 'freshtv376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv377 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 808 "VARParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__))) * _menhir_state * 'tv_list_data_declaration_) * _menhir_state * 'tv_list_terminated_instruction_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
    | _ ->
        _menhir_fail ()

and _menhir_goto_left_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_left_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState92 | MenhirState87 | MenhirState75 | MenhirState70 | MenhirState66 | MenhirState23 | MenhirState24 | MenhirState25 | MenhirState26 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState34 | MenhirState32 | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_left_expression) = Obj.magic _menhir_stack in
        (_menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) : 'freshtv326)
    | MenhirState21 | MenhirState64 | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_left_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_left_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | LABEL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | LP ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | MINUS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | NOT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | STAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_left_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_left_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_left_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | LABEL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | LP ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | MINUS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | NOT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | STAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | RP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState87 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expression__ = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 893 "VARParser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv336)
        | AND | EQ | GE | GT | LE | LT | MINUS | NEQ | OR | PLUS | PRCT | SEMI | SLASH | STAR ->
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_left_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | _ ->
        _menhir_fail ()

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (i : 'tv_instruction)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_terminated_instruction = 
# 69 "VARParser.mly"
                     ( i )
# 1006 "VARParser.ml"
         in
        _menhir_goto_terminated_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)

and _menhir_goto_list_function_definition_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_function_definition_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv311 * _menhir_state * 'tv_list_data_declaration_) * _menhir_state * 'tv_list_function_definition_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv307 * _menhir_state * 'tv_list_data_declaration_) * _menhir_state * 'tv_list_function_definition_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305 * _menhir_state * 'tv_list_data_declaration_) * _menhir_state * 'tv_list_function_definition_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (globals : 'tv_list_data_declaration_)), _, (text : 'tv_list_function_definition_)) = _menhir_stack in
            let _3 = () in
            let _v : (
# 39 "VARParser.mly"
      (VAR.program)
# 1037 "VARParser.ml"
            ) = 
# 45 "VARParser.mly"
    ( { text; globals } )
# 1041 "VARParser.ml"
             in
            _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv309 * _menhir_state * 'tv_list_data_declaration_) * _menhir_state * 'tv_list_function_definition_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state * 'tv_function_definition) * _menhir_state * 'tv_list_function_definition_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state * 'tv_function_definition) * _menhir_state * 'tv_list_function_definition_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_function_definition)), _, (xs : 'tv_list_function_definition_)) = _menhir_stack in
        let _v : 'tv_list_function_definition_ = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 1060 "VARParser.ml"
         in
        _menhir_goto_list_function_definition_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)) : 'freshtv316)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_LABEL__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_LABEL__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv303 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 1073 "VARParser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 1083 "VARParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv295 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 1093 "VARParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VAR ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | END | EXIT | IF | LABEL _ | NOP | PRINT | RETURN | STAR | WHILE ->
                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv297 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 1113 "VARParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)) : 'freshtv300)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 1124 "VARParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "VARParser.mly"
       (string)
# 1132 "VARParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 1144 "VARParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LABEL _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv290)
    | RP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 1160 "VARParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 17 "VARParser.mly"
       (string)
# 1165 "VARParser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1170 "VARParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 1180 "VARParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv155 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv153 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 87 "VARParser.mly"
                     ( e )
# 1229 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_expression = let bop =
          let _1 = _10 in
          
# 110 "VARParser.mly"
        ( Mult )
# 1255 "VARParser.ml"
          
        in
        
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1261 "VARParser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_expression = let bop =
          let _1 = _10 in
          
# 111 "VARParser.mly"
        ( Div  )
# 1276 "VARParser.ml"
          
        in
        
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1282 "VARParser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_expression = let bop =
          let _1 = _10 in
          
# 112 "VARParser.mly"
        ( Rem  )
# 1297 "VARParser.ml"
          
        in
        
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1303 "VARParser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)) : 'freshtv172)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | MINUS | NEQ | OR | PLUS | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 108 "VARParser.mly"
        ( Add  )
# 1328 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1334 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv175 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | LP | OR | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv179 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 120 "VARParser.mly"
        ( Or   )
# 1382 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1388 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv181 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | NEQ | OR | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv185 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 114 "VARParser.mly"
        ( Neq  )
# 1424 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1430 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv187 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | MINUS | NEQ | OR | PLUS | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv191 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 109 "VARParser.mly"
        ( Sub  )
# 1462 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1468 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv193 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv201 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | NEQ | OR | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv197 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 115 "VARParser.mly"
        ( Lt   )
# 1504 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1510 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv199 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | NEQ | OR | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 116 "VARParser.mly"
        ( Le   )
# 1546 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1552 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | NEQ | OR | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv209 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 117 "VARParser.mly"
        ( Gt   )
# 1588 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1594 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv211 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | NEQ | OR | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv215 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 118 "VARParser.mly"
        ( Ge   )
# 1630 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1636 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | NEQ | OR | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 113 "VARParser.mly"
        ( Eq   )
# 1672 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1678 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv223 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | LP | OR | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let bop =
              let _1 = _10 in
              
# 119 "VARParser.mly"
        ( And  )
# 1726 "VARParser.ml"
              
            in
            
# 89 "VARParser.mly"
                                        ( Binop(bop, e1, e2) )
# 1732 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv229 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQ | GE | GT | LE | LP | LT | MINUS | NEQ | OR | PLUS | RP | SEMI | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expression = let uop =
              let _1 = _10 in
              
# 103 "VARParser.mly"
        ( Minus )
# 1764 "VARParser.ml"
              
            in
            
# 88 "VARParser.mly"
                        ( Unop(uop, e) )
# 1770 "VARParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_expression = let uop =
          let _1 = _10 in
          
# 104 "VARParser.mly"
        ( Not   )
# 1792 "VARParser.ml"
          
        in
        
# 88 "VARParser.mly"
                        ( Unop(uop, e) )
# 1798 "VARParser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_left_expression = 
# 94 "VARParser.mly"
                    ( e )
# 1811 "VARParser.ml"
         in
        _menhir_goto_left_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv248)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instruction = 
# 81 "VARParser.mly"
                            ( Return(e) )
# 1906 "VARParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)) : 'freshtv256)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv261 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instruction = 
# 76 "VARParser.mly"
                           ( Print(e) )
# 1961 "VARParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv270)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState92 | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | LABEL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | LP ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | MINUS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | NOT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | STAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv276)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expression)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2089 "VARParser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PRCT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SLASH ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_left_expression)), _, (e : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_instruction = 
# 78 "VARParser.mly"
                                      ( Write(le, e) )
# 2139 "VARParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_terminated_instruction_ = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2162 "VARParser.ml"
     in
    _menhir_goto_list_terminated_instruction_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | INT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LABEL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LP ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | MINUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NOT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | STAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv150)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LABEL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LP ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | STAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | INT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | LABEL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | LP ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MINUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | NOT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | STAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv146)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | INT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | LABEL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | LP ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | NOT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | STAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_instruction = 
# 75 "VARParser.mly"
      ( Nop )
# 2315 "VARParser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "VARParser.mly"
       (string)
# 2322 "VARParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((l : (
# 17 "VARParser.mly"
       (string)
# 2332 "VARParser.ml"
    )) : (
# 17 "VARParser.mly"
       (string)
# 2336 "VARParser.ml"
    )) = _v in
    ((let _v : 'tv_left_expression = 
# 93 "VARParser.mly"
          ( Name(l) )
# 2341 "VARParser.ml"
     in
    _menhir_goto_left_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | INT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | LABEL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | LP ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MINUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | NOT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | STAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv134)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv131) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_instruction = 
# 77 "VARParser.mly"
       ( Exit )
# 2393 "VARParser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_function_definition_ = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2402 "VARParser.ml"
     in
    _menhir_goto_list_function_definition_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "VARParser.mly"
       (string)
# 2409 "VARParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 2421 "VARParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LABEL _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState13 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_LABEL__ = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2435 "VARParser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_LABEL__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv128)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 2449 "VARParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)

and _menhir_goto_immediate : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_immediate -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv119 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2463 "VARParser.ml"
        ))) * _menhir_state * 'tv_immediate) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv115 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2473 "VARParser.ml"
            ))) * _menhir_state * 'tv_immediate) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv113 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2480 "VARParser.ml"
            ))) * _menhir_state * 'tv_immediate) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (lab : (
# 17 "VARParser.mly"
       (string)
# 2485 "VARParser.ml"
            ))), _, (i : 'tv_immediate)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_data_declaration = 
# 55 "VARParser.mly"
                                     ( lab, i )
# 2493 "VARParser.ml"
             in
            _menhir_goto_data_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)) : 'freshtv116)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv117 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2503 "VARParser.ml"
            ))) * _menhir_state * 'tv_immediate) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | MenhirState85 | MenhirState92 | MenhirState87 | MenhirState75 | MenhirState70 | MenhirState66 | MenhirState23 | MenhirState24 | MenhirState25 | MenhirState26 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState34 | MenhirState32 | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * 'tv_immediate) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_immediate) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (i : 'tv_immediate)) = _menhir_stack in
        let _v : 'tv_expression = 
# 85 "VARParser.mly"
              ( Immediate(i) )
# 2516 "VARParser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
    | _ ->
        _menhir_fail ()

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "VARParser.mly"
      (VAR.program)
# 2525 "VARParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 39 "VARParser.mly"
      (VAR.program)
# 2534 "VARParser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 39 "VARParser.mly"
      (VAR.program)
# 2542 "VARParser.ml"
    )) : (
# 39 "VARParser.mly"
      (VAR.program)
# 2546 "VARParser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv110)) : 'freshtv112)

and _menhir_goto_list_data_declaration_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_data_declaration_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_list_data_declaration_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LABEL _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | EOF ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv102)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv103 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 2573 "VARParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__))) * _menhir_state * 'tv_list_data_declaration_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXIT ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | IF ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LABEL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | NOP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PRINT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | RETURN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | STAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | WHILE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | END ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv104)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_data_declaration) * _menhir_state * 'tv_list_data_declaration_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_data_declaration) * _menhir_state * 'tv_list_data_declaration_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_data_declaration)), _, (xs : 'tv_list_data_declaration_)) = _menhir_stack in
        let _v : 'tv_list_data_declaration_ = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2609 "VARParser.ml"
         in
        _menhir_goto_list_data_declaration_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)) : 'freshtv108)
    | _ ->
        _menhir_fail ()

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "VARParser.mly"
       (int)
# 2618 "VARParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 15 "VARParser.mly"
       (int)
# 2628 "VARParser.ml"
    )) : (
# 15 "VARParser.mly"
       (int)
# 2632 "VARParser.ml"
    )) = _v in
    ((let _v : 'tv_immediate = 
# 98 "VARParser.mly"
         ( i )
# 2637 "VARParser.ml"
     in
    _menhir_goto_immediate _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "VARParser.mly"
       (bool)
# 2644 "VARParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 16 "VARParser.mly"
       (bool)
# 2654 "VARParser.ml"
    )) : (
# 16 "VARParser.mly"
       (bool)
# 2658 "VARParser.ml"
    )) = _v in
    ((let _v : 'tv_immediate = 
# 99 "VARParser.mly"
         ( if b then 1 else 0 )
# 2663 "VARParser.ml"
     in
    _menhir_goto_immediate _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)

and _menhir_goto_data_declaration : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_data_declaration -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_data_declaration) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | END | EOF | EXIT | IF | LABEL _ | NOP | PRINT | RETURN | STAR | WHILE ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv96)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * 'tv_function_definition) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * 'tv_data_declaration) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv21 * _menhir_state * 'tv_left_expression)) * _menhir_state * 'tv_left_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_left_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_terminated_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv27 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv29 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv39 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv77 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 2847 "VARParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__))) * _menhir_state * 'tv_list_data_declaration_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv79 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 2856 "VARParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_LABEL__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 2865 "VARParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 17 "VARParser.mly"
       (string)
# 2874 "VARParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_list_data_declaration_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2888 "VARParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_startpos__1_ : Lexing.position) = _startpos in
        ((let _1 = () in
        let _v : (
# 39 "VARParser.mly"
      (VAR.program)
# 2907 "VARParser.ml"
        ) = let _startpos = _startpos__1_ in
        
# 46 "VARParser.mly"
        ( let pos = _startpos in
          let message =
            Printf.sprintf "Syntax error at %d, %d" pos.pos_lnum (pos.pos_cnum - pos.pos_bol)
          in
          failwith message )
# 2916 "VARParser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv90)) : 'freshtv92)) : 'freshtv94)

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_data_declaration_ = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2925 "VARParser.ml"
     in
    _menhir_goto_list_data_declaration_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "VARParser.mly"
       (string)
# 2941 "VARParser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv5 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2952 "VARParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv3 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2959 "VARParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (lab : (
# 17 "VARParser.mly"
       (string)
# 2964 "VARParser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_data_declaration = 
# 54 "VARParser.mly"
                     ( lab, 0 )
# 2971 "VARParser.ml"
             in
            _menhir_goto_data_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)) : 'freshtv6)
        | SET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv7 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2979 "VARParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv8)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state) * (
# 17 "VARParser.mly"
       (string)
# 2999 "VARParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 39 "VARParser.mly"
      (VAR.program)
# 3026 "VARParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF | LABEL _ ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 219 "/usr/share/menhir/standard.mly"
  


# 3058 "VARParser.ml"
