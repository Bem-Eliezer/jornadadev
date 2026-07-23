FUNCTION Main()
    LOCAL nNumero := 0
    LOCAL nA := 0
    LOCAL nB := 0

    SET PROCEDURE TO matematica.prg

    CLS
    QOut("=== TESTE: FatorialN() ===")
    nNUmero := 5
    QOut("Fatorial de " + AllTrim(Str(nNumero)) + " = " + AllTrim(Str(FatorialN(nNumero))))

    QOut("")
    QOut(" === TESTE: EhPrimo() === ")
    nNumero := 7
    IF EhPrimo(nNumero)
        QOut(AllTrim(Str(nNumero)) + "é primo.")
    ELSE
           QOut(AllTrim(Str(nNumero)) + "não é primo.")
    ENDIF

    QOut("")
    QOut("=== TESTE: MDC() ===")
    nA := 24
    nB := 36
    QOut("MDC(" + AllTrim(Str(nA)) + ", " + AllTrim(Str(nB)) + ") = " + AllTrim(Str(MDC(nA, nB))))

    QOut("")
    QOut("=== TESTE: MMC() ===")
    QOut("MMC(" + AllTrim(Str(nA)) + ", " + AllTrim(Str(nB)) + ") = " + AllTrim(Str(MMC(nA, nB))))

RETURN NIL