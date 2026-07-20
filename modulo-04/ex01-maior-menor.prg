FUNCTION Main()

    LOCAL nNumero1 := 0
    LOCAL nNumero2 := 0

    INPUT(" Digite o primeiro numero: ") TO nNumero1
    INPUT(" Digite o segundo numero: ") TO nNumero2


    IF nNumero1 == nNumero2 
        QOut(" Os numeros digitados são iguais")
    
    ELSE
        
        IF nNumero1 > nNumero2 
            QOut(" O Maior numero é: " + AllTrim(Str(nNumero1))) 
            QOut(" O Menor numero é: " + AllTrim(Str(nNumero2)))
     
        ELSE
             QOut(" O Maior numero é: " + AllTrim(Str(nNumero2))) 
            QOut(" O Menor numero é: " + AllTrim(Str(nNumero1)))
        ENDIF
    ENDIF


RETURN NIL