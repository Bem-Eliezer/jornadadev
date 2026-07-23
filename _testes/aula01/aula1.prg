FUNCTION Main()
    // declaraá∆o das variaveis
    LOCAL cNome := " Bem Eliezer" 
    LOCAL cCidade := " S∆o Paulo / SP"
    LOCAL cCurso := " Harbour / ADVPL"

    hb_cdpSelect("PT850")

    QOut("===============================")
    QOut("  FICHA DE APRESENTA√á√ÉO")
    QOut("===============================")
    QOut("Nome    :" + cNome) 
    QOut("Cidade  : " + cCidade)
    QOut("Curso   :" + cCurso) 
    QOut("===============================")

RETURN NIL


