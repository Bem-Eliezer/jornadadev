
FUNCTION MAIN()
    LOCAL nValor := 250
    LOCAL nDesconto := 0
    LOCAL nTotal := 0

    if nValor  > 100
        nDesconto := nValor * 0.10
    ENDIF

      nTotal := nValor - nDesconto

    QOut("O valor com desconto é: " + Str(nDesconto))

RETURN NIL