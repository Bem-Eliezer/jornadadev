FUNCTION Main()
    // declaraá∆o das variaveis
    LOCAL cNome := " Bem Eliezer" 
    LOCAL cCidade := " S∆o Paulo/SP"
    LOCAL cCurso := " Harbour/ADVPL"

    //declaraá∆o de variavel para Funá∆o Date() e convers∆o para string
    LOCAL cData := DToc(Date());
    
    //declaraá∆o de variavel para Funá∆o Time() com horario atual do sistema
    LOCAL cHora := Time();

    //Configuraá∆o para codePage PT850 para exibir caracteres especiais
    hb_cdpSelect("PT850")

    QOut("===========================")
    QOut("  FICHA DE APRESENTAÄ«O  ")
    QOut("===========================")
    QOut("Nome    : " + cNome) 
    QOut("Cidade  : " + cCidade)
    QOut("Curso   : " + cCurso) 
    QOut("Data    :  " + cData)
    QOut("Hora    :  " + cHora)
    QOut("===========================")

RETURN NIL
