FUNCTION Main()

    LOCAL nNumero1 := 0
    LOCAL nNumero2 := 0
    LOCAL nTotal := 0
    LOCAL cOperacao := ""
    LOCAL cMsgTotal := "O valor total é: "


    QOut("===================================")
    QOut(" CALCULADORA ")
    QOut("===================================")
    
    INPUT("Insira o Primeiro numero ") TO nNumero1
    ACCEPT("Digite a operação (+, -, *, /, ^, R) : ") TO cOperacao

    cOperacao := Upper(cOperacao)

    DO CASE 

        CASE cOperacao == "+"
            INPUT("Insira o Segundo numero ") TO nNumero2
            nTotal := nNumero1 + nNumero2
            QOut( cMsgTotal + AllTrim(Str(nTotal, 10, 2)))
        
        CASE cOperacao == "-"
            INPUT("Insira o Segundo numero ") TO nNumero2
            nTotal := nNumero1 - nNumero2
            QOut( cMsgTotal + AllTrim(Str(nTotal, 10, 2)))

        CASE cOperacao == "*"
            INPUT("Insira o Segundo numero ") TO nNumero2
             nTotal := nNumero1 * nNumero2
             QOut( cMsgTotal + AllTrim(Str(nTotal, 10, 2)))
        
        CASE cOperacao == "/"
            INPUT("Insira o Segundo numero ") TO nNumero2
            IF nNumero2 == 0 
                QOut("Erro: Divisão por zero não é permitida")
            ELSE
                nTotal := nNumero1 / nNumero2
                QOut( cMsgTotal + AllTrim(Str(nTotal, 10, 2)))
            ENDIF

        CASE cOperacao == "^"
             INPUT("Insira o expoente ") TO nNumero2
             nTotal := nNumero1 ^ nNumero2
             QOut( cMsgTotal + AllTrim(Str(nTotal, 10, 2)))

        CASE cOperacao == "R"
            IF nNumero1 == 0 
            QOut("Erro: Não existe raiz quadrada de numero negativo")
            ELSE
             nTotal := Sqrt(nNumero1)
             QOut( cMsgTotal + AllTrim(Str(nTotal, 10, 2)))
            ENDIF

        OTHERWISE
            QOut("Opção inválida")
    ENDCASE        

RETURN NIL