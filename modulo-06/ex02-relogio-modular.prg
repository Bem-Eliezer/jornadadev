FUNCTION Main()
    LOCAL nContador := 1
    LOCAL cHoraBruta, cHoraPronta

    ClearScreen()
    QOut("Inicializando o relógio por 30 segundos...")
    QOut("------------------------------------------")

    DO WHILE nCOntador <= 30
        cHoraBruta := ObterHora() // chama a função (armazenar dado)
        cHoraPronta := FormatarHora(cHoraBruta) // chama a função (transforma dado)
        exibirHora(cHoraPronta)

        Inkey(1)    //Aguarda 1 segunda para atualizar
        nContador++


        QOut("")
        QOut("Relógio finalizado!")
    ENDDO

RETURN NIL

    // Função Busca o dado do sistema e Retorna
    FUNCTION ObterHora()
    RETURN Time()

    //Função Recebe dado, processa e Retorna
    FUNCTION FormatarHora(cHora)
        // com a função Upper() pude alterar o tamanha da letra para tudo Maiusculo
        LOCAL cFormatada := Upper(cHora)
    RETURN cFormatada

    // Procedimento apena executa a ação de exibir na tela
    PROCEDURE exibirHora(cHora)
        // @ Row(), Col() exibe o texto sempre na mesma posição da tela
        @ 04, 05 SAY "Hora atual: " + cHora
    RETURN

    PROCEDURE ClearScreen()
    CLS // Executa o comando real do Harbour para limpar a tela
    RETURN
