#define PI 3.14159

FUNCTION Main()

    LOCAL nRaio := 0
    LOCAL nArea := 0

    LOCAL nCatetoA := 0
    LOCAL nCatetoB := 0
    LOCAL nHipotenusa := 0

    LOCAL nPeso := 0
    LOCAL nAltura := 0
    LOCAL nIMC := 0

    QOut("=============================================")
    QOut(" CALCULO DA AREA DO CIRCULO ")
    QOut("")

    INPUT "Informe o raio do circulo: " TO nRaio

    // Calcula a área do círculo usando a fórmula: área = π * raio²
    nArea := PI * (nRaio ^ 2)

    // Mostra o resultado 
    ? "area do circulo : " + STR(nArea, 10 )

    QOut("=============================================")
    QOut(" CALCULO DA HIPOTENUSA ")
    QOut("")

    INPUT "Informe o primeiro cateto: " TO nCatetoA
    INPUT "Informe o segundo cateto: " TO nCatetoB

    // Calcula a hipotenusa usando o teorema de Pitágoras: hipotenusa² = catetoA² + catetoB²
    nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))
       
    // Mostra o resultado 
    ? "valor da hipotenusa: " + Str(nHipotenusa, 10 )

    QOut("=============================================")
    QOut(" CALCULO DO IMC ")
    QOut("")

    INPUT "Informe o peso (Kg) " TO nPeso
    INPUT "Informe a altura (m) " TO nAltura

    // Calcula o IMC usando a fórmula: IMC = peso / (altura²)
    nIMC := nPeso / (nAltura ^ 2)

    // Mostra o resultado 
    ? "Seu IMC: " + Str(nIMC, 10 )

RETURN NIL