FUNCTION Main()
    LOCAL aProdutos := {}
    LOCAL nOpcao    := -1
    LOCAL cCodigo   := ""
    LOCAL nPos      := 0

    DO WHILE nOpcao != 0
        nOpcao := Menu()

        DO CASE
            CASE nOpcao == 1
                CadastrarProduto(aProdutos)

            CASE nOpcao == 2
                ListarProdutos(aProdutos)

            CASE nOpcao == 3
                EntradaEstoque(aProdutos)

            CASE nOpcao == 4
                SaidaEstoque(aProdutos)

            CASE nOpcao == 5
                ACCEPT "Digite o codigo para busca: " TO cCodigo
                nPos := BuscarProduto(aProdutos, cCodigo)
                IF nPos > 0
                    ? "[+] Encontrado na pos: " + Str(nPos)
                    ? "    Nome: " + aProdutos[nPos][2]
                    ? "    Qtd: "  + Str(aProdutos[nPos][3])
                ELSE
                    ? "[!] Produto nao encontrado!"
                ENDIF

            CASE nOpcao == 6
                RelatorioEstoque(aProdutos)

            CASE nOpcao == 0
                ? "Saindo do sistema..."

            OTHERWISE
                ? "[!] Opcao invalida!"
        ENDCASE
    ENDDO

RETURN NIL