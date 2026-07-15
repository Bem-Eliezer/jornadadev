FUNCTION Main()
    // declara‡Æo das variaveis
    LOCAL cNome := " Bem Eliezer" 
    LOCAL cCidade := " SÆo Paulo/SP"
    LOCAL cCurso := " Harbour/ADVPL"

    //Configura‡Æo para codePage PT850 para exibir caracteres especiais        
    hb_cdpSelect("PT850")

    QOut("===========================")
    QOut("  FICHA DE APRESENTA€ÇO  ")
    QOut("===========================")
    QOut("Nome    : " + cNome) 
    QOut("Cidade  : " + cCidade)
    QOut("Curso   : " + cCurso) 
    QOut("===========================")

RETURN NIL


