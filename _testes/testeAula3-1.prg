// FUNCTION Main()

//     QOut(2 + 3 * 4)
//     QOut((2 + 3) * 4)

//     QOut( "harbour" = "harb")
//     QOut("harbour" == "harb")
// RETURN NIL

FUNCTION Main()

    LOCAL nIdade := 50 
    LOCAL lAtivo := .F.

    IF (nIdade > 60 .AND. lAtivo)
        ? "Aposentadoria"
    ENDIF
        

    IF (nIdade <18 .OR. !lAtivo)
        ? "Menor de idade ou não ativo"
    ENDIF
        

RETURN NIL