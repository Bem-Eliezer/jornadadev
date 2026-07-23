FUNCTION Main()

    LOCAL nNumero1 := 0
    LOCAL nNumero2 := 0
    LOCAL nTotal := 0
    LOCAL cOperacao := ""
    LOCAL lSucesso := .F.


    ExibirCabecalho()
    
    
    nNumero1 := LerNumero("Insira o primeiro numero: ")
    cOperacao := LerOperacao()

    IF cOperacao != "R"
        nNumero2 := LerNumero("Insira o segundo numero (ou expoente): ")
    ENDIF

    lSucesso := Calcular(nNumero1, nNumero2, cOperacao, @nTotal)

    MostrarResultado(lSucesso, nTotal)

RETURN NIL

    FUNCTION Calcular(nNumero1, nNumero2, cOperacao, nTotal)
            
        DO CASE 

            CASE cOperacao == "+"
                nTotal := nNumero1 + nNumero2
            
            CASE cOperacao == "-"
                nTotal := nNumero1 - nNumero2
                

            CASE cOperacao == "*"
                nTotal := nNumero1 * nNumero2
              
            
            CASE cOperacao == "/"
            
                IF nNumero2 == 0 
                    RETURN .F.
                ENDIF    
                    nTotal := nNumero1 / nNumero2
            

            CASE cOperacao == "^"
                nTotal := nNumero1 ^ nNumero2
         

            CASE cOperacao == "R"
                IF nNumero1 < 0 
                    RETURN .F.
                ENDIF
                nTotal := Sqrt(nNumero1)

            OTHERWISE
                RETURN .F.
        
            ENDCASE     

    RETURN .T.


PROCEDURE ExibirCabecalho()
    CLS
    QOut("===================================")
    QOut(" CALCULADORA ")
    QOut("===================================")
RETURN

FUNCTION LerNumero(cMensagem)
    LOCAL nValor := 0  
    INPUT cMensagem To nValor
RETURN nValor

FUNCTION LerOperacao()
    LOCAL cOp := ""
    ACCEPT("Digite a operação (+, -, *, /, ^, R) : ") TO cOp

RETURN Upper(AllTrim(cOp))

FUNCTION MostrarResultado(lSucesso, nTotal)

     IF lSucesso
        QOut("O valor total é: " + AllTrim(Str(nTotal,10,2)))
    ELSE
        QOut("Erro: operação inválida ou divisão por zero.")
    ENDIF

RETURN NIL

