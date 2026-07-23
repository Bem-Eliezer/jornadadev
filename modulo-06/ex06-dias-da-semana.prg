FUNCTION Main()

    LOCAL nDia := 0
    LOCAL aDias := { "Domingo",  "Segunda-feira", "Terça-feira", "Quarta-feira", ;
                      "Quinta-feira", "Sexta-feira", "Sábado" }

    QOut("==============================================")
    QOut("           DIAS DA SEMANA POR ÍNDICE           ")
    QOut("==============================================")

    INPUT "Digite o numero do dia (1 a 7): " TO nDia

    // Validação do intervalo: verifica se está entre 1 e 7
    IF nDia >= 1 .AND. nDia <= 7
        // Acessa diretamente a posição correspondente no Array (índice começa em 1)
        QOut( aDias[nDia] )
    ELSE
        QOut("Numero invalido! Digite um valor entre 1 e 7.")
    ENDIF

RETURN NIL