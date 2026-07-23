procedure Main()
    local aLista := {10, 13, 4, 20, 1, -4}
    local item

    // for each item in aLista
    //     QOut(item)
    // end do

    BubbleSort(aLista)

    for each item in aLista
        QOut(item)
    end do
return

procedure BubbleSort(aLista)
    local nI := 1
    local nJ := 1
    local nTemp := 1

    for nI := 1 to len(aLista)
        for nJ := 1 to Len(aLista) - 1
            if aLista[nJ] > aLista[nJ + 1]
                nTemp := aLista[nJ]
                aLista[nJ] := aLista[nJ + 1]
                aLista[nJ + 1] := nTemp
            endif
        next
    next
return