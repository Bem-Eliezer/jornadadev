FUNCTION FatorialN(nN)
    LOCAL nResultado := 1
    LOCAL nContador := 0

    //Calcula o fatorial de N

    IF nN < 0 
        RETURN -1
    ENDIF

    FOR nContador := 2 TO nN
        nResultado *= nContador
    NEXT

RETURN nResultado

// função retorna .T. se não for Primo

FUNCTION EhPrimo(nN)
    LOCAL nContador := 2

    IF nN < 2 
        RETURN .F.
    ENDIF
    
    FOR nContador := 2 TO Int(Sqrt(nN))
        IF nN % nContador == 0
            RETURN .F.
        ENDIF
    NEXT

RETURN .T.

///Calcula o MDC
FUNCTION MDC(nA, nB)
    LOCAL nResto := 0
    
    DO WHILE nB != 0 
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO

RETURN nA

// Calcula o MMC
FUNCTION MMC(nA, nB)
RETURN (nA * nB) / MDC(nA, nB)
