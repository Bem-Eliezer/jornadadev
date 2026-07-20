FUNCTION Main()
    LOCAL cNome       := ""
    LOCAL cDisciplina := ""
    LOCAL nNota1      := 0
    LOCAL nNota2      := 0
    LOCAL nMedia      := 0
    LOCAL cContinuar  := "" 

    // LAÇO PRINCIPAL DO PROGRAMA
    DO WHILE .T.

        QOut("===================================")
        QOut("      CADASTRO E MEDIA ALUNO       ")
        QOut("===================================")

        // Validação do Nome
        DO WHILE .T.
            ACCEPT ("Digite o nome do aluno: ") TO cNome
            IF Len( Trim(cNome) ) > 0
                EXIT 
            ELSE
                QOut("Erro: O nome nao pode ficar em branco.")
                QOut("")
            ENDIF
        ENDDO

        // Validação da Disciplina
        DO WHILE .T.
            ACCEPT ("Digite a disciplina (EX: MAT, POR): ") TO cDisciplina
            IF Len( Trim(cDisciplina) ) == 3 .AND. cDisciplina == Upper(cDisciplina)
                EXIT 
            ELSE
                QOut("Erro: A disciplina deve ter exatamente 3 letras maiusculas.")
                QOut("")
            ENDIF
        ENDDO

        // Validação da Nota 1
        DO WHILE .T.
            INPUT ("Digite a primeira nota (0 a 10): ") TO nNota1
            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT 
            ELSE
                QOut("Erro: A nota deve estar entre 0 e 10.")
                QOut("")
            ENDIF
        ENDDO

        // Validação da Nota 2
        DO WHILE .T.
            INPUT ("Digite a segunda nota (0 a 10): ") TO nNota2
            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT 
            ELSE
                QOut("Erro: A nota deve estar entre 0 e 10.")
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
        QOut("===================================")
        QOut("")

        
        ACCEPT ("Deseja calcular outro? (S/N): ") TO cContinuar
        
        // Se a resposta NÃO for "S" ou "s", quebra o loop principal e encerra
        IF Upper(cContinuar) != "S"
            QOut("Programa encerrado. Ate logo!")
            EXIT
        ENDIF
        
        QOut("")

    ENDDO

RETURN NIL