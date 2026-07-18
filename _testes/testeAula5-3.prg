FUNCTION Main()

    LOCAL nNum, nI
    LOCAL cNum
    
    ACCEPT "Tabuada de qual numero " TO cNUM
    nNum := Val(cNum)

    FOR nI := 1 TO 10
        QOut(ALLTRIM(Str(nNum)) + " x " + Str(nI) + " = " + ALLTRIM(Str(nNum * nI)))
    NEXT
RETURN NIL