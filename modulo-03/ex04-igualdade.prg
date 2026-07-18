FUNCTION Main()

   LOCAL cTexto1 := "Harbour"
   LOCAL cTexto2 := "Harb"

   CLS

   ? "==========================="
   ? "Comparacao de Strings"
   ? "==========================="

   ?

   ? "Texto 1:", cTexto1
   ? "Texto 2:", cTexto2

   ?

   ? "Comparando com ="

   IF cTexto1 = cTexto2
      ? "Resultado: .T."
   ELSE
      ? "Resultado: .F."
   ENDIF

   ?

   ? "Comparando com =="

   IF cTexto1 == cTexto2
      ? "Resultado: .T."
   ELSE
      ? "Resultado: .F."
   ENDIF


RETURN NIL