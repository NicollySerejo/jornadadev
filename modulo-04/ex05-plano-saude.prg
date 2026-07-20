FUNCTION Main()

    LOCAL nIdade
    LOCAL nDependentes
    LOCAL nValorPlano
    LOCAL nValorTotal

    Accept "Informe a idade do beneficiário: " TO nIdade
    Accept "Informe o número de dependentes: " TO nDependentes

    nIdade := Val(nIdade)
    nDependentes := Val(nDependentes)

    IF nIdade <= 25
        nValorPlano := 180

    ELSEIF nIdade <= 40
        nValorPlano := 260

    ELSEIF nIdade <= 60
        nValorPlano := 380

    ELSE
        nValorPlano := 520
    ENDIF

    nValorTotal := nValorPlano + (nDependentes * 90)
    ? "Valor do plano: R$", nValorPlano
    ? "Dependentes: ", nDependentes
    ? "Valor total: R$", nValorTotal

RETURN NIL
