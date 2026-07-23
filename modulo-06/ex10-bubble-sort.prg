FUNCTION Main()

    LOCAL aVetor := {}
    LOCAL nI     := 0

    QOut("===================================")
    QOut("        BUBBLE SORT NA MAO           ")
    QOut("===================================")

    // Gera 10 números aleatórios para testar
    FOR nI := 1 TO 10
        aAdd(aVetor, hb_randomInt(1, 100))
    NEXT

    QOut("")
    QOut("Antes de ordenar:")
    ExibirArray(aVetor)

    BubbleSort(aVetor)

    QOut("")
    QOut("Depois de ordenar:")
    ExibirArray(aVetor)

RETURN NIL

    // Ordena o array em ordem crescente, sem usar ASort()
    FUNCTION BubbleSort(aVetor)
        LOCAL nI, nJ, nTemp

        FOR nI := 1 TO Len(aVetor) - 1
            FOR nJ := 1 TO Len(aVetor) - nI
                // Se o elemento atual for maior que o vizinho, troca os dois
                IF aVetor[nJ] > aVetor[nJ + 1]
                    nTemp         := aVetor[nJ]
                    aVetor[nJ]    := aVetor[nJ + 1]
                    aVetor[nJ + 1] := nTemp
                ENDIF
            NEXT
        NEXT
    RETURN NIL

    // Exibe os elementos do array na mesma linha, separados por espaço
    PROCEDURE ExibirArray(aVetor)
        LOCAL nI
        LOCAL cLinha := ""

        FOR nI := 1 TO Len(aVetor)
            cLinha += AllTrim(Str(aVetor[nI])) + " "
        NEXT

        QOut(cLinha)
    RETURN