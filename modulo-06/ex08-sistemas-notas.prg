FUNCTION Main()

    LOCAL aAlunos := {}
    LOCAL nQtde   := 0
    LOCAL nI      := 0
    LOCAL cNome   := ""
    LOCAL nNota1  := 0
    LOCAL nNota2  := 0
    LOCAL nNota3  := 0
    LOCAL nNota4  := 0
    LOCAL nMedia  := 0

    QOut("===================================")
    QOut("       SISTEMA DE NOTAS             ")
    QOut("===================================")

    INPUT "Quantos alunos serao cadastrados? " TO nQtde

    // Leitura dos alunos e preenchimento do array multidimensional
    FOR nI := 1 TO nQtde
        QOut("")
        QOut("--- Aluno " + AllTrim(Str(nI)) + " ---")

        ACCEPT "Nome: " TO cNome
        INPUT  "Nota 1: " TO nNota1
        INPUT  "Nota 2: " TO nNota2
        INPUT  "Nota 3: " TO nNota3
        INPUT  "Nota 4: " TO nNota4

        nMedia := (nNota1 + nNota2 + nNota3 + nNota4) / 4

        // Cada linha do array: {nome, n1, n2, n3, n4, media}
        aAdd(aAlunos, { cNome, nNota1, nNota2, nNota3, nNota4, nMedia })
    NEXT

    QOut("")
    QOut("===================================")
    QOut("             APROVADOS              ")
    QOut("===================================")
    FOR nI := 1 TO Len(aAlunos)
        IF aAlunos[nI][6] >= 7
            QOut(Trim(aAlunos[nI][1]) + " - Media: " + AllTrim(Str(aAlunos[nI][6], 10, 2)))
        ENDIF
    NEXT

    QOut("")
    QOut("===================================")
    QOut("            REPROVADOS              ")
    QOut("===================================")
    FOR nI := 1 TO Len(aAlunos)
        IF aAlunos[nI][6] < 7
            QOut(Trim(aAlunos[nI][1]) + " - Media: " + AllTrim(Str(aAlunos[nI][6], 10, 2)))
        ENDIF
    NEXT

RETURN NIL