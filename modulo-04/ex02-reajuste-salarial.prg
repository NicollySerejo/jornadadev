FUNCTION Main()

    LOCAL nSalario
    LOCAL nReajuste
    LOCAL nNovoSalario

    ACCEPT "Informe o salário: " TO nSalario

    nSalario:=Val(nSalario)

       IF nSalario < 1000
    nReajuste := 0.15
ELSEIF nSalario <= 2000
    nReajuste := 0.12
ELSEIF nSalario <= 4000
    nReajuste := 0.08
ELSE
    nReajuste := 0.05
ENDIF
    nNovoSalario := nSalario + (nSalario * nReajuste)

    ? "Salário atual: ", nSalario
    ? "Percentual de reajuste: ", nReajuste * 100, "%"
    ? "Novo salário: ", nNovoSalario
    
RETURN NIL