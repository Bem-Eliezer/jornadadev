FUNCTION Main()
    LOCAL nSecreto    := 0
    LOCAL nPalpite    := 0
    LOCAL nTentativa  := 0
    LOCAL lAcertou    := .F. 

    QOut("==================================================")
    QOut("          JOGO: ADIVINHE O NUMERO!                ")
    QOut("  Eu escolhi um numero de 1 a 100. Tente acertar! ")
    QOut("           Voce tem apenas 7 tentativas.          ")
    QOut("==================================================")

    // Sorteia o numero secreto entre 1 e 100
    nSecreto := HB_RandomInt(1, 100)

    // O FOR var controlar as 7 tentativas permitidas
    FOR nTentativa := 1 TO 7
        QOut("")
        QOut("--- Tentativa " + AllTrim(Str(nTentativa)) + " de 7 ---")
        INPUT ("Digite o seu palpite: ") TO nPalpite

        // Verifica se o palpite está correto
        IF nPalpite == nSecreto
            lAcertou := .T. // Altera para Verdadeiro (.T.) indicando que venceu
            EXIT            // Interrompe o FOR imediatamente, pois o jogo acabou
        ENDIF

        // Se errou, dá a dica informando se o número é maior ou menor
        IF nPalpite < nSecreto
            QOut("Dica: O numero secreto é MAIOR que " + AllTrim(Str(nPalpite)))
        ELSE
            QOut("Dica: O numero secreto é MENOR que " + AllTrim(Str(nPalpite)))
        ENDIF
    NEXT

    QOut("")
    QOut("==================================================")
    QOut("                  FIM DE JOGO                     ")
    QOut("==================================================")

    IF lAcertou
        QOut("Parabens! Voce acertou na tentativa " + AllTrim(Str(nTentativa)) + "!")
    ELSE
        QOut("Que pena! Suas 7 tentativas acabaram.")
        QOut("O numero secreto era: " + AllTrim(Str(nSecreto)))
    ENDIF
    QOut("==================================================")

RETURN NIL
