function FatorialN(nN)
    local nFatorial := 1
    local nI := 1

    if nN < 0
        return 0
    endif

    for nI := 1 to nN
        nFatorial *= nI
    next
return nFatorial

function EhPrimo(nN)
    local nI := 2

    if nN <= 1 
        return .F.
    endif

    for nI := 2 to Sqrt(nN)
        if nN % nI == 0
            return .F.
        endif
    next
return .T.
    
function MMC(nA, nB)
    if nA == 0 .OR. nB == 0
        return 0
    endif
return Int(Abs(nA * nB) / MDC(nA,nB))

function MDC(nA, nB)
    local nTemp := 0

    while nB != 0
        nTemp := nB
        nB := nA % nB
        nA := nTemp
    end do
return Int(nA)