#define CASASDECIMAIS 3
FUNCTION Main()
   LOCAL cNome
   LOCAL nIdade
   LOCAL nValor1 
   LOCAL nValor2



    INPUT "Digite o primeiro valor: " TO nValor1
    INPUT "Digite o segundo valor: " TO nValor2
    
    QOut("Total da soma: " + Alltrim(Str(nValor1 + nValor2, 10, CASASDECIMAIS)))

    QOut("Total da SUbtração: " + Alltrim(Str(nValor1 - nValor2, 10, CASASDECIMAIS)))

    QOut("Total da Multiplicação: " + Alltrim(Str(nValor1 * nValor2, 10, CASASDECIMAIS)))

    IF nValor2 <> 0 
        QOut("Total da Divisão: " + Alltrim(Str(nValor1 / nValor2, 10, CASASDECIMAIS)))
    ELSE 
        QOut("Não é possível dividir por zero!")
    ENDIF

    
RETURN NIL


//    // ACCEPT lê uma string
//    ACCEPT "Digite seu nome: " TO cNome

//    // INPUT lê um valor (número, string, data, lógico)
//    INPUT "Digite sua idade: " TO nIdade


//    QOut("Olá, " + cNome + "!")
//    QOut("Você tem " + Alltrim(Str(nIdade)) + " anos.")
