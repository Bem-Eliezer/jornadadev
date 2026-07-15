// FUNCTION Soma(n1, n2)
//     LOCAL nResult := n1 + n2
//     QOut ( str(nResult))
// RETURN NIL

// FUNCTION Main()
//     hb_cdpSelect("UTF8")
//     Soma(10, 7)
// RETURN NIL

FUNCTION Soma(n1, n2)
    LOCAL nResult := n1 + n2
    QOut ( str(nResult))
RETURN NIL

FUNCTION Main()
    hb_cdpSelect("UTF8")
    Soma(10, 7)
RETURN NIL