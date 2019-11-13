VARCompiler:
	ocamlopt Op.ml
	
	ocamlopt Op.cmx IMPExpr.ml
	ocamlopt Op.cmx IMPExpr.cmx IMPInstr.ml
	ocamlopt Op.cmx IMPExpr.cmx FUNInstr.ml

	ocamlopt VAR.ml
	menhir -v VARParser.mly
	ocamlopt VARParser.mli
	ocamlopt VARParser.ml
	ocamllex VARLexer.mll
	ocamlopt VARLexer.ml
	ocamlopt Op.cmx IMPExpr.cmx ART.ml
	ocamlopt Op.cmx IMPExpr.cmx FUNInstr.cmx ART.cmx FUN.ml
	ocamlopt Op.cmx IMPExpr.cmx IMPInstr.cmx ART.cmx IMP.ml
	ocamlopt Op.cmx IMPExpr.cmx CLLInstr.ml
	ocamlopt Op.cmx IMPExpr.cmx CLLInstr.cmx ART.cmx CLL.ml

	ocamlopt VARtoFUN.ml

	ocamlopt FUNtoCLL.ml
	ocamlopt Op.cmx IMPExpr.cmx IMPInstr.cmx CLLtoIMP.ml
	
	
	ocamlopt -o VARCompiler Op.cmx IMPExpr.cmx IMPInstr.cmx ART.cmx FUNInstr.cmx CLLInstr.cmx CLL.cmx FUN.cmx FUNtoCLL.cmx IMP.cmx CLLtoIMP.cmx VARtoFUN.cmx VARParser.cmx VARLexer.cmx VARCompiler.ml

clean:
	rm -rf *.cmi *.cmx *.o *a.out *.conflicts *.automaton VARLexer.ml VARParser.ml VARParser.mli VARCompiler
