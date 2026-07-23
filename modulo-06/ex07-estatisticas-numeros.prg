FUNCTION Main()

    LOCAL aValores := {}
    LOCAL nI       := 0
    LOCAL nValor   := 0
    LOCAL nSoma    := 0
    LOCAL nMedia   := 0

    QOut("===================================")
    QOut("     ESTATISTICAS DE 10 NUMEROS     ")
    QOut("===================================")

    // Leitura dos 10 números e preenchimento do array
    FOR nI := 1 TO 10
        INPUT "Digite o " + AllTrim(Str(nI)) + "º numero: " TO nValor
        aAdd(aValores, nValor)
    NEXT

    // Ordena o array em ordem crescente
    ASort(aValores)

    // Soma percorrendo o array já ordenado
    FOR nI := 1 TO Len(aValores)
        nSoma += aValores[nI]
    NEXT
    nMedia := nSoma / Len(aValores)

    QOut("")
    QOut("===================================")
    QOut("             RESULTADO              ")
    QOut("===================================")

    QOut("Numeros em ordem crescente:")
    FOR nI := 1 TO Len(aValores)
        QOut(AllTrim(Str(aValores[nI])))
    NEXT

    QOut("")
    QOut("Soma:   " + AllTrim(Str(nSoma, 10, 2)))
    QOut("Media:  " + AllTrim(Str(nMedia, 10, 2)))
    QOut("Maior:  " + AllTrim(Str(aValores[Len(aValores)])))
    QOut("Menor:  " + AllTrim(Str(aValores[1])))