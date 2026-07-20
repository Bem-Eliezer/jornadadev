FUNCTION Main()
    LOCAL nIdade       := 0
    LOCAL nDependentes := 0
    LOCAL nValorBase   := 0
    LOCAL nValorTotal  := 0
    LOCAL nAdicionalDep := 90
    LOCAL cMsgFinal    := "O valor mensal total do plano e: R$ "

    QOut("===================================")
    QOut("       CALCULO PLANO DE SAUDE      ")
    QOut("===================================")

    // Entrada de dados
    INPUT "Digite a idade do titular: " TO nIdade
    INPUT "Digite o numero de dependentes: " TO nDependentes

    // Validação inicial (caso digitem idades inválidas)
    IF nIdade < 0 .OR. nDependentes < 0
        QOut("Erro: Idade ou numero de dependentes nao podem ser negativos.")
        RETURN NIL
    ENDIF

    // Estrutura DO CASE para definir o valor base por Faixa Etária
    DO CASE
        CASE nIdade <= 25
            nValorBase := 180

        CASE nIdade >= 26 .AND. nIdade <= 40
            nValorBase := 260

        CASE nIdade >= 41 .AND. nIdade <= 60
            nValorBase := 380

        OTHERWISE // Captura qualquer idade acima de 60 anos
            nValorBase := 520
    ENDCASE

    // Cálculo final: Valor base + (Quantidade de dependentes * R$ 90)
    nValorTotal := nValorBase + (nDependentes * nAdicionalDep)

    // Exibição do resultado formatado com 2 casas decimais
    QOut( cMsgFinal + AllTrim( Str(nValorTotal, 10, 2) ) )

RETURN NIL
