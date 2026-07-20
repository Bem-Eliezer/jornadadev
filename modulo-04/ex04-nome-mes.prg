FUNCTION Main()

    LOCAL nMes := 0
    LOCAL aMeses := { "Janeiro", "Fevereiro", "Março", "Abril", ;
                      "Maio", "Junho", "Julho", "Agosto","Setembro", ;
                      "Outubro", "Novembro", "Dezembro"}

     QOut("==============================================")
    QOut("    DESCOBRIR O MES (DE FORMA MAIS CURTA)    ")
    QOut("==============================================")

    INPUT "Digite o numero do mes (1 a 12): " TO nMes

    // Validação do intervalo: Verifica se está entre 1 e 12
    IF nMes >= 1 .AND. nMes <= 12
        // Acessa diretamente a posição correspondente no Array
        QOut( aMeses[nMes] )
    ELSE
        QOut("Mes invalido")
    ENDIF

RETURN NIL