FUNCTION Main()

    LOCAL cValor
    LOCAL nValor
    LOCAL nTotal := 0
    LOCAL nQtd := 0

    ? "=== Maquina de Soma ==="
    ? "Digite 0 para encerrar."

    WHILE .T.

        ACCEPT "Digite um valor: " TO cValor
        nValor := Val(cValor)

        IF nValor == 0
            EXIT
        ENDIF

        nTotal := nTotal + nValor
        nQtd := nQtd + 1

    ENDDO

    ? "Soma total:", nTotal
    ? "Quantidade de valores:", nQtd

RETURN NIL