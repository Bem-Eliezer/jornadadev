FUNCTION Main()
    LOCAL nNumero := 0
    LOCAL nTotal  := 0 
    LOCAL nQtd    := 0 

    QOut("===================================")
    QOut("          MAQUINA DE SOMA          ")
    QOut("     (Digite 0 para encerrar)      ")
    QOut("===================================")

    DO WHILE .T.
        INPUT ("Digite um numero: ") TO nNumero

        // Condição de parada: se for 0, sai do laço sem somar e sem contar
        IF nNumero == 0
            EXIT
        ENDIF

        // Atualização dos dados (Processamento)
        nTotal := nTotal + nNumero 
        nQtd   := nQtd + 1          // Incrementa o contador em 1 unidade

    ENDDO

    // Exibição dos resultados finais após a saída do loop
    QOut("===================================")
    QOut("             RESULTADO             ")
    QOut("===================================")
    QOut("Quantidade de numeros somados: " + AllTrim(Str(nQtd)))
    QOut("A soma total dos valores e:    " + AllTrim(Str(nTotal, 10, 2)))

RETURN NIL
