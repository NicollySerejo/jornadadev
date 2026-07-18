FUNCTION Main()

   LOCAL cNota1 := ""
   LOCAL cNota2 := ""
   LOCAL cNota3 := ""
   LOCAL cNota4 := ""

   LOCAL nNota1 := 0
   LOCAL nNota2 := 0
   LOCAL nNota3 := 0
   LOCAL nNota4 := 0

   LOCAL nMedia := 0


   CLS

   ? "=============================="
   ? "     MEDIA PONDERADA"
   ? "=============================="

   ?

   ACCEPT "Digite a primeira nota: " TO cNota1
   ACCEPT "Digite a segunda nota : " TO cNota2
   ACCEPT "Digite a terceira nota: " TO cNota3
   ACCEPT "Digite a quarta nota  : " TO cNota4


   nNota1 := Val(cNota1)
   nNota2 := Val(cNota2)
   nNota3 := Val(cNota3)
   nNota4 := Val(cNota4)


   nMedia := ((nNota1 * 1) + ;
              (nNota2 * 2) + ;
              (nNota3 * 3) + ;
              (nNota4 * 4)) / 10


   ?

   ? "=============================="
   ? "Resultado"
   ? "=============================="

   ? "Nota 1:", nNota1, "Peso: 1"
   ? "Nota 2:", nNota2, "Peso: 2"
   ? "Nota 3:", nNota3, "Peso: 3"
   ? "Nota 4:", nNota4, "Peso: 4"

   ?

   ? "Media ponderada:", Transform(nMedia, "999.99")


RETURN NIL