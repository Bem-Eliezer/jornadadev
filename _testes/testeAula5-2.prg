FUNCTION Main()
    LOCAL nTotal := 0
    LOCAL nI := 1, nNum, nQtd

    ACCEPT  "Quantos numeros? " TO nQtd
    nQtd := Val(nQtd)
    
    WHILE nI <= nQtd
        ACCEPT "Numero: " TO nNum
        nToTal += Val(nNum)
        NI++
    ENDDO
    QOut("Soma: " + Str(nTotal))

RETURN NIL