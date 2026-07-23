procedure Main()
    local nI := 1
    local aV := {}
    local cEntrada := ""
    local nNumero := 0
    local nSoma := 0
    local nMedia := 0

    while len(aV) < 10
        accept "Insira 10 números para gerar as estatísticas: " + AllTrim(Str(len(aV) + 1)) +"° de 10: " to cEntrada
        nNumero := Val(cEntrada)

        AAdd(aV, nNumero)
    enddo

    ASort(aV)
    nSoma := SomaListaN(aV)
    nMedia := nSoma / len(aV)

    QOut("")
    QOut("Os números da lista: ")

    for nI := 1 to len(aV)
        if nI == len(aV)
            QQOut(hb_StrFormat("%d.", aV[nI]))
        else    
            QQOut(hb_StrFormat("%d, ", aV[nI]))
        endif
    next

    QOut(hb_StrFormat("A soma é %d e a média é %d", nSoma, nMedia))
    QOut(hb_StrFormat("O maior é %d e o menos é %d", av[len(aV)], aV[1]))
return

function SomaListaN(aLista)
    local nI := 1
    local nSoma := 0
    for nI := 1 to len(aLista)
        nSoma += aLista[nI]
    next
return nSoma