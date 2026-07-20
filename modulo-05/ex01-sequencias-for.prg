FUNCTION Main()

    LOCAL nContador := 0

    // ==========================================================
    // a) Imprima os números de 1 a 100
    // ==========================================================
    QOut("==================================================")
    QOut("a) Sequencia de 1 a 100:")
    QOut("==================================================")
    
    FOR nContador := 1 TO 100 STEP 1
        QQOut( AllTrim(Str(nContador)) + " " )
    NEXT
    
    QOut("") // Quebra de linha no final do bloco


    // ========================================================
    // b) Imprima os números de -50 a 50
    // ========================================================
    QOut("")
    QOut("==================================================")
    QOut("b) Sequencia de -50 a 50:")
    QOut("==================================================")
    
    FOR nContador := -50 TO 50
        QQOut( AllTrim(Str(nContador)) + " " )
    NEXT
    
    QOut("") 

    // =======================================================
    // c) Imprima os números de 80 a 5 em ordem decrescente
    // =======================================================
    QOut("")
    QOut("==================================================")
    QOut("c) Sequencia de 80 a 5 (Decrescente):")
    QOut("==================================================")
    
    // O STEP -1 faz o contador subtrair 1 a cada passo em vez de somar
    FOR nContador := 80 TO 5 STEP -1
        QQOut( AllTrim(Str(nContador)) + " " )
    NEXT
    
    QOut("") 

RETURN NIL
