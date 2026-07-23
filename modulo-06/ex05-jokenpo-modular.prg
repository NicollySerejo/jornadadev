procedure Main()
    Jokenpo()
return

procedure Jokenpo()
    local cJogadaComputador := SortearJogadaCPU()
    local cJogadaUsuario := ""
    local cVencedor := ""

    while .T.
        accept "Escolha sua jogada (PEDRA, PAPEL ou TESOURA): " to cJogadaUsuario

        if ValidarJogada(cJogadaUsuario)
            exit
        endif
    end do

    cVencedor := DefinirVencedor(cJogadaUsuario, cJogadaComputador)

    MostrarDisplayVencedor(cJogadaUsuario, cJogadaComputador, cVencedor)
return

function SortearJogadaCPU()
    local nNumeroAleatorio := HB_RandomInt(1, 3)
    local aJogadas := { "PEDRA", "PAPEL", "TESOURA" }


return aJogadas[nNumeroAleatorio]

function ValidarJogada(cJogada)
    local aJogadas := { "PEDRA", "PAPEL", "TESOURA" }
    local nI := 1

    for nI := 1 to len(aJogadas)
        if UPPER(cJogada) == aJogadas[nI]
            return .T.
        endif
    next
return .F.

function DefinirVencedor(cJogada1, cJogada2)
    local cJogadaFormatada1 := Upper(cJogada1)
    local cJogadaFormatada2 := Upper(cJogada2)

    if cJogadaFormatada1 == cJogadaFormatada2
        return "Empate!"
    endif

    if (cJogadaFormatada1 == "PEDRA" .AND. cJogadaFormatada2 == "TESOURA") .OR. ;
        (cJogadaFormatada1 == "TESOURA" .AND. cJogadaFormatada2 == "PAPEL") .OR.;
        (cJogadaFormatada1 == "PAPEL" .AND. cJogadaFormatada2 == "PEDRA")
        return "Você venceu!"
    endif

return "Computador venceu!"

procedure MostrarDisplayVencedor(cJogadaUsuario, cJogadaComputador, cVencedor)
    QOut("")
    QOut("**************************")
    QOut("Resultado do Jokenpo")
    QOut("Você jogou: " + UPPER(cJogadaUsuario))
    QOut("O Computador jogou: " + cJogadaComputador)
    QOut("O resultado é :")
    QOut(cVencedor)
    QOut("**************************")
    QOut("")
return 