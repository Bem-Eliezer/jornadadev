FUNCTION Main()

    LOCAL cTexto1 := ""
    LOCAL cTexto2 := ""

    QOut(" ***** Comparando Operadores = e == *****")
   
    QOut("")

    QOut("Agora digite alguma palavra e compare se sao Iguais ou não") 
    
    QOut("")

    ACCEPT ("Digite a Primeira palavra (Exemplo: eliezer): ") TO cTexto1
    ACCEPT ("Digite a Segunda palavra (Exemplo: eli):  ") TO cTexto2

     QOut("") 

    IF cTexto1 = cTexto2
        QOut("#### TEXTOS PARECIDOS ####  -> Utilizando o operador =  o texto é considerado igual mesmo que esteja incompleto.")
    ELSE
        QOut("#### TEXTOS TOTALMENTE DIFERENTES #### -> Utilizando o operador = para o texto ser considerado diferente deve ser basicamente outra palavra. ")
    ENDIF

    QOut("")

    IF cTexto1 == cTexto2
        QOut("#### TEXTOS IGUAIS #### -> Com o operador == o texto deve estar exatamente igual para ser considerado identico.")
    ELSE
        QOut("#### TEXTOS DIFERENTES #### -> Utilizando o operador == o Texto alterado minimamente é considerado diferente. ")
    ENDIF

RETURN NIL

// O comparador = usa de referência a primeira String para comparar com a segunda e assim verificar se são "iguais" ou não 
//  levando em consideração que a letras maiusculas e minusculas são diferenciais na comparação.
//  Vale ressaltar que se a primeira String for parte do nome e a segunda ser o nome completo o resultado se torna falso, como se fossem 2 palavras diferentes.

// O comparador == so se torna verdadeiro se cada caracter da string for igual considerando letras em maiusculo e minusculos 
// caso contrario qualquer detalhe diferente se torna comparação de igualdade Falsa.
