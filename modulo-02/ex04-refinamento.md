 
 --------- Visão geral ---------

 1. Registrar os itens da Compra.
 2. Calcular o subtotal.
 3. Verificar se o cliente possui cartão fidelidade.
 4. Aplicar desconto, se nescessario.
 5. Mostrar total da Compra.

 --------- Detalhamento ---------

 1. Resgistrar os itens da compra.
     Leia quantidadeItens 

     subtotal <- 0 

     Repita para cada item 
        Leia precoItem
        subtotal <- subtotal <- preçoItem
    
    FimRepita

 2. Calcular o subtotal.
    - subtotal <- soma dos preços.

 3. Verificar se o cliente possui cartão fidelidade
    - Leia a resposta (Sim ou Não)

 4. Aplicar desconto.
    Se possui cartao fidelidade Então
        desconto <- subtotal * 0,05
    Senão 
        desconto <- 0 
    FimSe

 5.Calcular o total.
    total <- subtotal - desconto

 6. Mostrar o total a pagar.
    Escreva o total

 Fim