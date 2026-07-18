FUNCTION Main()

    LOCAL nNotaHistoria := 0
    LOCAL nNotaGeografia := 0 
    LOCAL nNotaCiencias := 0
    LOCAL nNotaIngles := 0
    LOCAL nMedia := 0


    QOut("===================================")
    QOut(" CALCULADORA DE MEDIA PONDERADA ")
    QOut("===================================")
    QOut("")

    INPUT("Insira sua Nota de Historia: ") TO nNotaHistoria
    INPUT("Insira sua Nota de Geografia: ") TO nNotaGeografia
    INPUT("Insira sua Nota de Ciencias: ") TO nNotaCiencias
    INPUT("Insira sua Nota de Ingles: ") TO nNotaIngles

    // Calculando a media ponderada (pesos: 1, 2, 3 e 4)
    nMedia := (nNotaHistoria * 1 + ;
               nNotaGeografia * 2 +;
               nNotaCiencias * 3 +;
               nNotaIngles * 4) / 10

    QOut("")
    QOut("======== RESULTADO ========")
    QOut("Media Ponderada: " + Str(nMedia, 10, 2))
RETURN NIL