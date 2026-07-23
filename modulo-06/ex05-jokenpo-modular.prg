FUNCTION Main()

    LOCAL cJogadaJogador := ""
    LOCAL cJogadaCPU     := ""
    LOCAL cResultado     := ""

    QOut("===================================")
    QOut("       JOKENPO MODULAR              ")
    QOut("===================================")

    // Validação da entrada: repete até o jogador digitar uma jogada válida
    DO WHILE .T.
        ACCEPT "Escolha (PEDRA, PAPEL ou TESOURA): " TO cJogadaJogador
        cJogadaJogador := Upper(AllTrim(cJogadaJogador))

        IF ValidarJogada(cJogadaJogador)
            EXIT
        ELSE
            QOut("Jogada invalida! Tente novamente.")
        ENDIF
    ENDDO

    cJogadaCPU := SortearJogadaCPU()
    cResultado := DefinirVencedor(cJogadaJogador, cJogadaCPU)

    ExibirResultado(cJogadaJogador, cJogadaCPU, cResultado)

RETURN NIL

    // Sorteia a jogada do computador entre as 3 opções possíveis
    FUNCTION SortearJogadaCPU()
        LOCAL aJogadas := { "PEDRA", "PAPEL", "TESOURA" }
    RETURN aJogadas[ hb_randomInt(1, 3) ]

    // Valida se a jogada digitada é uma das 3 opções aceitas
    FUNCTION ValidarJogada(cJogada)
    RETURN cJogada == "PEDRA" .OR. cJogada == "PAPEL" .OR. cJogada == "TESOURA"

    // Compara as duas jogadas e define o vencedor
    FUNCTION DefinirVencedor(cJogada1, cJogada2)

        IF cJogada1 == cJogada2
            RETURN "EMPATE"
        ENDIF

        IF (cJogada1 == "PEDRA"    .AND. cJogada2 == "TESOURA") .OR. ;
           (cJogada1 == "PAPEL"    .AND. cJogada2 == "PEDRA")   .OR. ;
           (cJogada1 == "TESOURA"  .AND. cJogada2 == "PAPEL")
            RETURN "JOGADOR"
        ENDIF

    RETURN "CPU"

    // Exibe o resultado final da rodada
    PROCEDURE ExibirResultado(cJogadaJogador, cJogadaCPU, cResultado)
        QOut("")
        QOut("Sua jogada: " + cJogadaJogador)
        QOut("Jogada da CPU: " + cJogadaCPU)
        QOut("")

        DO CASE
            CASE cResultado == "EMPATE"
                QOut("Resultado: EMPATE!")
            CASE cResultado == "JOGADOR"
                QOut("Resultado: VOCE VENCEU!")
            OTHERWISE
                QOut("Resultado: A CPU VENCEU!")
        ENDCASE
    RETURN