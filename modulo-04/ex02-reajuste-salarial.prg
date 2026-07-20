FUNCTION Main()

    LOCAL nSalarioAtual := 0
    LOCAL nNovoSalario := 0
    LOCAL cMsgDeAumento := " PARABENS SEU SALARIO AUMENTOU R$ "

    QOut("===================================")
    QOut(" REAJUSTE SALARIAL POR FAIXAS ")
    QOut("===================================")

    INPUT("INSIRA O VALOR DO SEU SALARIO ATUAL: ") TO nSalarioAtual
    QOut("")


    IF nSalarioAtual < 1000
        nNovoSalario := nSalarioAtual + (nSalarioAtual * 0.15)
        QOut (cMsgDeAumento +  AllTrim(Str(nSalarioAtual * 0.15)) + " Sendo 15% do valor")

    ELSEIF nSalarioAtual <= 2000
        nNovoSalario := nSalarioAtual + (nSalarioAtual * 0.12) 
        QOut (cMsgDeAumento +  AllTrim(Str(nSalarioAtual * 0.12)) + " Sendo 12% do valor")
        
    ELSEIF nSalarioAtual <= 4000
        nNovoSalario := nSalarioAtual + (nSalarioAtual * 0.08) 
        QOut (cMsgDeAumento +  AllTrim(Str(nSalarioAtual * 0.08)) + " Sendo 8% do valor")     
        
    ELSE 
        nNovoSalario := nSalarioAtual + (nSalarioAtual * 0.05)
        QOut (cMsgDeAumento +  AllTrim(Str(nSalarioAtual * 0.05))+ " Sendo 5% do valor")
    
    ENDIF

    QOut(" Salario atual: R$ " + AllTrim(Str(nSalarioAtual)))
    QOut(" Novo salario : R$ " + AllTrim(Str(nNovoSalario)))

RETURN NIL