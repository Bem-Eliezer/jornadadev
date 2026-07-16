FUNCTION Main()


    LOCAL cTexto := ""
    LOCAL nNumero := 10
    LOCAL dData := Date()
    
    SET DATE FORMAT TO "DD/MM/YYYY"
    
    QOut("Texto: " + cTexto)
    QOut("Numero: " + ALLtrim(str(nNumero)))
    QOut("Data: " + DtoC(dData))
    
RETURN NIL