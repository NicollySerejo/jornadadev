FUNCTION Menu()
    LOCAL cOpcao := "0"

    ? ""
    ? "=== CONTROLE DE ESTOQUE ==="
    ? "1 - Cadastrar produto"
    ? "2 - Listar produtos"
    ? "3 - Entrada de estoque"
    ? "4 - Saida de estoque"
    ? "5 - Buscar produto por codigo"
    ? "6 - Relatorio (Valor em estoque)"
    ? "0 - Sair"
    ? ""
    ACCEPT "Escolha uma opcao: " TO cOpcao

RETURN Val(cOpcao)


FUNCTION BuscarProduto(aProdutos, cCodigo)
    LOCAL nPos := 0
    LOCAL i

    cCodigo := Upper(AllTrim(cCodigo))

    FOR i := 1 TO Len(aProdutos)
        IF Upper(AllTrim(aProdutos[i][1])) == cCodigo
            nPos := i
            EXIT
        ENDIF
    NEXT i
RETURN nPos


FUNCTION CadastrarProduto(aProdutos)
    LOCAL cCodigo := ""
    LOCAL cNome   := ""
    LOCAL cQtd    := ""
    LOCAL cPreco  := ""
    LOCAL nQtd    := 0
    LOCAL nPreco  := 0
    LOCAL nPos    := 0

    ? ""
    ? "--- CADASTRAR PRODUTO ---"
    ACCEPT "Codigo do produto: " TO cCodigo
    
    IF Empty(cCodigo)
        ? "[!] Codigo invalido!"
        RETURN .F.
    ENDIF

    nPos := BuscarProduto(aProdutos, cCodigo)
    IF nPos > 0
        ? "[!] Atencao: Ja existe produto com este codigo!"
        RETURN .F.
    ENDIF

    ACCEPT "Nome do produto: " TO cNome
    ACCEPT "Quantidade inicial: " TO cQtd
    ACCEPT "Preco unitario: " TO cPreco

    nQtd   := Val(cQtd)
    nPreco := Val(cPreco)

    IF nQtd < 0 .OR. nPreco < 0
        ? "[!] Valores nao podem ser negativos!"
        RETURN .F.
    ENDIF

    AADD(aProdutos, { AllTrim(cCodigo), AllTrim(cNome), nQtd, nPreco })
    ? "[+] Produto cadastrado com sucesso!"
RETURN .T.


FUNCTION ListarProdutos(aProdutos)
    LOCAL i

    IF Len(aProdutos) == 0
        ? "[!] Nenhum produto cadastrado."
        RETURN NIL
    ENDIF

    ? ""
    ? "=== LISTAGEM DE PRODUTOS ==="
    FOR i := 1 TO Len(aProdutos)
        ? "Cod: " + aProdutos[i][1] + ;
          " | Nome: " + aProdutos[i][2] + ;
          " | Qtd: " + Str(aProdutos[i][3]) + ;
          " | Preco: R$ " + Transform(aProdutos[i][4], "@E 999,999.99")
    NEXT i
RETURN NIL


FUNCTION EntradaEstoque(aProdutos)
    LOCAL cCodigo := ""
    LOCAL cQtd    := ""
    LOCAL nQtdAdd := 0
    LOCAL nPos    := 0

    ? ""
    ? "--- ENTRADA DE ESTOQUE ---"
    ACCEPT "Codigo do produto: " TO cCodigo

    nPos := BuscarProduto(aProdutos, cCodigo)
    IF nPos == 0
        ? "[!] Produto nao encontrado!"
        RETURN .F.
    ENDIF

    ACCEPT "Quantidade de entrada: " TO cQtd
    nQtdAdd := Val(cQtd)

    IF nQtdAdd <= 0
        ? "[!] Quantidade deve ser maior que zero!"
        RETURN .F.
    ENDIF

    aProdutos[nPos][3] += nQtdAdd
    ? "[+] Entrada efetuada! Novo saldo: " + Str(aProdutos[nPos][3])
RETURN .T.


FUNCTION SaidaEstoque(aProdutos)
    LOCAL cCodigo := ""
    LOCAL cQtd    := ""
    LOCAL nQtdSub := 0
    LOCAL nPos    := 0

    ? ""
    ? "--- SAIDA DE ESTOQUE ---"
    ACCEPT "Codigo do produto: " TO cCodigo

    nPos := BuscarProduto(aProdutos, cCodigo)
    IF nPos == 0
        ? "[!] Produto nao encontrado!"
        RETURN .F.
    ENDIF

    ACCEPT "Quantidade de saida: " TO cQtd
    nQtdSub := Val(cQtd)

    IF nQtdSub <= 0
        ? "[!] Quantidade deve ser maior que zero!"
        RETURN .F.
    ENDIF

    IF aProdutos[nPos][3] < nQtdSub
        ? "[!] Estoque insuficiente! Disponivel: " + Str(aProdutos[nPos][3])
        RETURN .F.
    ENDIF

    aProdutos[nPos][3] -= nQtdSub
    ? "[+] Saida efetuada! Saldo restante: " + Str(aProdutos[nPos][3])
RETURN .T.


FUNCTION RelatorioEstoque(aProdutos)
    LOCAL nSubTotal := 0
    LOCAL nTotal    := 0
    LOCAL i

    IF Len(aProdutos) == 0
        ? "[!] Nenhum produto para relatorio."
        RETURN NIL
    ENDIF

    ? ""
    ? "=== RELATORIO FINANCEIRO ==="
    FOR i := 1 TO Len(aProdutos)
        nSubTotal := aProdutos[i][3] * aProdutos[i][4]
        nTotal    += nSubTotal

        ? "Produto: " + aProdutos[i][1] + " - " + aProdutos[i][2]
        ? "   Qtd: " + Str(aProdutos[i][3]) + " x R$ " + Transform(aProdutos[i][4], "@E 999,999.99") + " = R$ " + Transform(nSubTotal, "@E 999,999.99")
        ? "----------------------------------------"
    NEXT i

    ? "VALOR TOTAL EM ESTOQUE: R$ " + Transform(nTotal, "@E 999,999.99")
RETURN NIL