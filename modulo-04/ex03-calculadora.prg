FUNCTION Main()

    LOCAL nA
    LOCAL nB
    LOCAL cOperacao
    LOCAL nResultado

    ACCEPT "Informe o primeiro número: " TO nA
    ACCEPT "Informe o segundo número: " TO nB
    ACCEPT "Informe a operação (+, -, *, /, ^, R): " TO cOperacao

    nA := Val(nA)
    nB := Val(nB)

    DO CASE

    CASE cOperacao == "+"
        nResultado := nA + nB

    CASE cOperacao == "-"
        nResultado := nA - nB

    CASE cOperacao == "*"
        nResultado := nA * nB

    CASE cOperacao == "/"
        IF nB == 0
            ? "Erro: divisão por zero!"
            RETURN NIL
        ENDIF
        nResultado := nA / nB

    CASE cOperacao == "^"
        nResultado := nA ^ nB

    CASE Upper(cOperacao) == "R"
        nResultado := Sqrt(nA)

    OTHERWISE
        ? "Operação inválida!"
        RETURN NIL

ENDCASE

? "Resultado: ", nResultado