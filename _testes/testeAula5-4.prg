FUNCTION Main()

    LOCAL cInput 
    LOCAL nNota

WHILE .T.
    ACCEPT "Nota (0 a 10): " To cInput
    nNota := Val(cInput)
    IF nNota >= 0 .AND. nNota <= 10 
        EXIT
    ENDIF
    QOut("Nota inválida! Tente de novo.")
ENDDO

RETURN NIL