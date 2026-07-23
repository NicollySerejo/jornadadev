procedure Main()
    local nDiaSemana := 0
    local cEntrada := ""
    local cDiaSemana := ""

    hb_langSelect("PT")

    accept "Escolha o dia da semana de 1 ao dia 7: " to cEntrada
    nDiaSemana := Int(Val(cEntrada))

    while !ValidarDiaSemana(nDiaSemana)
        accept "Digite um dia da semana válido (ex: 1 para Segunda, etc...): " to cEntrada
        
        nDiaSemana := Int(Val(cEntrada))

        if ValidarDiaSemana(nDiaSemana)
            exit
        endif
    enddo

    cDiaSemana := DiaDaSemana(nDiaSemana)

    QOut(cDiaSemana)
    QOut(NToCDoW(nDiaSemana))
return

function ValidarDiaSemana(nDiaSemana)
return (nDiaSemana >= 1 .AND. nDiaSemana <= 7)

function DiaDaSemana(nDiaSemana)
    local aDiasSemana := {"Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado", }
return aDiasSemana[nDiaSemana]