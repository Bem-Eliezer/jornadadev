FUNCTION Main()
    LOCAL cNome       := ""
    LOCAL cDisciplina := ""
    LOCAL nNota1      := 0
    LOCAL nNota2      := 0
    LOCAL nMedia      := 0

    QOut("===================================")
    QOut("      CADASTRO E MEDIA ALUNO       ")
    QOut("===================================")

    // 1. Validação do Nome (Não pode ser vazio)
    DO WHILE .T.
        ACCEPT ("Digite o nome do aluno: ") TO cNome
        
        // Remove espaços antes de testar o tamanho
        IF Len( Trim(cNome) ) > 0
            EXIT // Dado válido, avança
        ELSE
            QOut("Erro: O nome nao pode ficar em branco. Tente novamente.")
            QOut("")
        ENDIF
    ENDDO

    // 2. Validação da Disciplina (3 letras maiúsculas)
    DO WHILE .T.
        ACCEPT ("Digite a disciplina (EX: MAT, POR): ") TO cDisciplina
        
        // Valida se tem tamanho 3 E se é igual à sua versão em maiúscula
        IF Len( Trim(cDisciplina) ) == 3 .AND. cDisciplina == Upper(cDisciplina)
            EXIT // Dado válido, avança
        ELSE
            QOut("Erro: A disciplina deve ter exatamente 3 letras maiusculas.")
            QOut("")
        ENDIF
    ENDDO

    // 3. Validação da Nota 1 (Entre 0 e 10)
    DO WHILE .T.
        INPUT ("Digite a primeira nota (0 a 10): ") TO nNota1
        
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT // Dado válido, avança
        ELSE
            QOut("Erro: A nota deve estar obrigatoriamente entre 0 e 10.")
            QOut("")
        ENDIF
    ENDDO

    // 4. Validação da Nota 2 (Entre 0 e 10)
    DO WHILE .T.
        INPUT ("Digite a segunda nota (0 a 10): ") TO nNota2
        
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT // Dado válido, avança
        ELSE
            QOut("Erro: A nota deve estar obrigatoriamente entre 0 e 10.")
            QOut("")
        ENDIF
    ENDDO

    // calculando a Média
    nMedia := (nNota1 + nNota2) / 2

    QOut("")
    QOut("===================================")
    QOut("          BOLETIM FINAL            ")
    QOut("===================================")
    QOut("Aluno:      " + Trim(cNome))
    QOut("Disciplina: " + cDisciplina)
    QOut("Nota 1:     " + AllTrim( Str(nNota1, 10, 2) ))
    QOut("Nota 2:     " + AllTrim( Str(nNota2, 10, 2) ))
    QOut("-----------------------------------")
    QOut("Media:      " + AllTrim( Str(nMedia, 10, 2) ))

RETURN NIL
