#define_TESTE03 "teste03"

FUNCTION Main()

    QOut(_TESTE03)
    
// LOCAL cCliente 
// LOCAL nSalario 
// LOCAL lAtivo
// LOCAL dAdmissao
    
    PUBLIC nNumero := 50
    operacoes()
    Soma()


RETURN NIL

FUNCTION Operacoes()
    nNUmero := 66
    // PRIVATE nNumero := 10
    Soma()
    Subtrai()

RETURN NIL


FUNCTION Soma()
    // LOCAL nNumero := 20
    QOut(nNUmero)
    Qout("Função Soma")

RETURN NIL

FUNCTION Subtrai()
    // LOCAL nNumero := 30
    QOut(nNUmero)
    Qout("Função Subtrai")
    
RETURN NIL