FUNCTION Main()
    
    LOCAL cNome := ""
    LOCAL cDataNasc := ""
    LOCAL dDataNasc := DATE()
    LOCAL cPreco := ""
    LOCAL nPreco := 0
    LOCAL nIdade := 0
    LOCAL nDesconto := 0
    LOCAL nTotal := 0

    
    SET DATE BRITISH
    SET CENTURY ON

    //entrada de dados 
    ACCEPT "Digite seu nome: " TO cNome

    ACCEPT "Informe a data de nascimento (dd/mm/aaaa): " TO cDataNasc
    dDataNasc := CTOD(cDataNasc)

    ACCEPT "Informe o preço do produto: " TO cPreco
    nPreco := VAL(cPreco)

    //Calcula a idade
    nIdade := Int((Date() - dDataNasc) / 365)

    //verifica se tem direito ao desconto 
    IF nIdade >= 61 
        nDesconto := nPreco * 0.125
    ENDIF

    //Calculo do Valor FInal 
    nTotal := nPreco - nDesconto

    ? "====== RESUMO ======"
    ? "Cliente: " + cNome
    ? "Idade: " + Str(nIdade, 3)
    ? "Preco: R$ " + Str(nPreco, 10, 2)
    ? "Desconto: " + Str(nDesconto, 10, 2)
    ? "Total: R$ "+ Str(nTotal, 10, 2)

RETURN NIL

