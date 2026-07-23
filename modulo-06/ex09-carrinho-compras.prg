procedure Main()    
    local cNomeItem := ""
    local nPrecoItem := 0
    local aMiniCarrinho := {}
    local aItem := {}
    local nTotal := 0

    hb_langSelect("PT")

    do while .T.
        accept "Digite nome do produto ou 0 para finalizar carrinho: " to cNomeItem

        if cNomeItem == "0"
            exit
        endif

        accept "Digite o valor do produto: " to nPrecoItem

        AAdd(aMiniCarrinho, { cNomeItem, nPrecoItem })
    enddo

    QOut("Lista do carrinho de compras")
    QOut("Itens:")

    for each aItem in aMiniCarrinho
        QOut(aItem[1])
        nTotal += Val(aItem[2])
    next

    QOut("Quantidade itens: " + FormatarValorNtoC(len(aMiniCarrinho)))
    QOut("Total: " + FormatarValorN(nTotal))
return

function FormatarValorN(nValor)
return AllTrim(Str(nValor, 10,2))

function FormatarValorNtoC(nValor)
return AllTrim(Str(nValor, 10,0))