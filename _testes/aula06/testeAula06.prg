FUNCTION Main()

    LOCAL nX := 5
    nX := Dobrar(nX)
    DobrarRef(@nX)

RETURN NIL


    FUNCTION Dobrar(nValor)
        nVAlor *= 2 
        nVAlor := 1
    RETURN  nValor

    FUNCTION DobrarRef(nValor) 
        nValor *= 2 ; 
        
        nX := Dobrar(nX)
        DobrarRef(@nX)
        
    RETURN NIL
