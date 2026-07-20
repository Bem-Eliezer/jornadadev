FUNCTION Main()
    LOCAL nNumero  := 0
    LOCAL nNumDobro := 0

    QOut("===================================")
    QOut("       PROGRAMA: CALCULE O DOBRO   ")
    QOut("   (Digite 0 ou negativo para sair) ")
    QOut("===================================")

    // Cria um loop infinito ativo enquanto .T. (Verdadeiro) for verdade
    DO WHILE .T.
        
        QOut("")
        INPUT ("Digite um numero inteiro: ") TO nNumero

        // Condição de Parada: se o número for menor ou igual a zero, sai do loop
        IF nNumero <= 0
            QOut("Valor de parada digitado. Programa encerrado!")
            EXIT // Força a saída imediata do bloco DO WHILE
        ENDIF

        // Cálculo do dobro
        nNumDobro := nNumero * 2

        QOut("O dobro de " + AllTrim(Str(nNumero)) + " e: " + AllTrim(Str(nNumDobro)))

    ENDDO

RETURN NIL