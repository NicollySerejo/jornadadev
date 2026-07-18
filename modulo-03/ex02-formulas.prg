#define PI 3.14159

FUNCTION Main()

   LOCAL cRaio, nRaio, nArea
   LOCAL cA, cB, nA, nB, nHipotenusa
   LOCAL cPeso, cAltura, nPeso, nAltura, nIMC

   ACCEPT "Digite o raio: " TO cRaio
   nRaio := Val(cRaio)

   nArea := PI * ( nRaio ^ 2 )

   ? "Área:", Str(nArea, 10, 2)

   ACCEPT "Digite o cateto A: " TO cA
   ACCEPT "Digite o cateto B: " TO cB

   nA := Val(cA)
   nB := Val(cB)

   nHipotenusa := Sqrt( ( nA ^ 2 ) + ( nB ^ 2 ) )

   ? "Hipotenusa:", Str(nHipotenusa, 10, 2)

   ACCEPT "Digite o peso: " TO cPeso
   ACCEPT "Digite a altura: " TO cAltura

   nPeso := Val(cPeso)
   nAltura := Val(cAltura)

   nIMC := nPeso / ( nAltura ^ 2 )

   ? "IMC:", Str(nIMC, 10, 2)

RETURN NIL