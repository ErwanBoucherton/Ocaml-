VARCompiler:
	ocamlc -c  Op.ml
	
	ocamlc -c IMPExpr.ml
	ocamlc -c  IMPInstr.ml
	ocamlc -c  FUNInstr.ml

	ocamlc -c VAR.ml
	menhir -v VARParser.mly
	ocamlc -c VARParser.mli
	ocamlc -c VARParser.ml
	ocamllex  VARLexer.mll
	ocamlc -c VARLexer.ml
	ocamlc -c ART.ml
	ocamlc -c FUN.ml
	ocamlc -c IMP.ml
	ocamlc -c CLLInstr.ml
	ocamlc -c CLL.ml

	ocamlc -c  VARtoFUN.ml

	ocamlc -c FUNtoCLL.ml
	ocamlc -c CLLtoIMP.ml
	
	
	ocamlc -o VARCompiler Op.ml IMPExpr.ml IMPInstr.ml ART.ml IMP.ml FUNtoCLL.ml FUNInstr.ml FUN.ml CLLtoIMP.ml CLLInstr.ml CLL.ml VARtoFUN.ml VARLexer.ml VARParser.ml VARCompiler.ml

clean:
	rm -rf *.cmi *.cmx *.cmo *.o *a.out *.conflicts *.automaton VARLexer.ml VARParser.ml VARParser.mli VARCompiler
