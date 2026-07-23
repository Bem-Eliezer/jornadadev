FUNCTION Main()

    LOCAL aCarrinho := {}
    LOCAL cNome     := ""
    LOCAL nPreco    := 0
    LOCAL nI        := 0
    LOCAL nTotal    := 0
    LOCAL cContinuar := ""

    QOut("===================================")
    QOut("        MINI CARRINHO DE COMPRAS    ")
    QOut("===================================")

    // Loop de adição de itens, encerra quando o usuário quiser
    DO WHILE .T.

        QOut("")
        ACCEPT "Nome do produto: " TO cNome
        INPUT  "Preco do produto: " TO nPreco

        // Cada item do carrinho: {nome, preco}
        aAdd(aCarrinho, { cNome, nPreco })

        QOut("")
        ACCEPT "Deseja adicionar outro item? (S/N): " TO cContinuar

        IF Upper(cContinuar) != "S"
            EXIT
        ENDIF

    ENDDO

    QOut("")
    QOut("===================================")
    QOut("           ITENS DO CARRINHO        ")
    QOut("===================================")

    FOR nI := 1 TO Len(aCarrinho)
        QOut(Trim(aCarrinho[nI][1]) + " - R$ " + AllTrim(Str(aCarrinho[nI][2], 10, 2)))
        nTotal += aCarrinho[nI][2]
    NEXT

    QOut("")
    QOut("===================================")
    QOut("Total: R$ " + AllTrim(Str(nTotal, 10, 2)))
    QOut("===================================")

RETURN NIL