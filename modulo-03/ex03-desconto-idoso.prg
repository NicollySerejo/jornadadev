FUNCTION Main()

   //=============================
   // Declaração das variáveis
   //=============================

   LOCAL cNome       := ""
   LOCAL cDataNasc   := ""
   LOCAL dDataNasc   := Ctod("")
   LOCAL cPreco      := ""
   LOCAL nPreco      := 0
   LOCAL nIdade      := 0
   LOCAL nDesconto   := 0
   LOCAL nTotal      := 0

   //=============================
   // Entrada de dados
   //=============================

   ACCEPT "Digite o nome do cliente: " TO cNome

   ACCEPT "Digite a data de nascimento (dd/mm/aaaa): " TO cDataNasc
   dDataNasc := Ctod(cDataNasc)

   ACCEPT "Digite o preço do produto: " TO cPreco
   nPreco := Val(cPreco)

   //=============================
   // Cálculo da idade
   //=============================

   nIdade := ( Date() - dDataNasc ) / 365

   //=============================
   // Verificação do desconto
   //=============================

   IF Int(nIdade) > 60
      nDesconto := nPreco * 0.125
   ELSE
      nDesconto := 0
   ENDIF

   //=============================
   // Valor final
   //=============================

   nTotal := nPreco - nDesconto

   //=============================
   // Exibição do resultado
   //=============================

   ?

   ? "=============================="
   ? "      RESUMO DA COMPRA"
   ? "=============================="

   ? "Cliente   :", cNome
   ? "Idade     :", Int(nIdade), "anos"
   ? "Preço     : R$", Transform(nPreco, "@E 999,999.99")
   ? "Desconto  : R$", Transform(nDesconto, "@E 999,999.99")
   ? "Total     : R$", Transform(nTotal, "@E 999,999.99")

   ? "=============================="

RETURN NIL