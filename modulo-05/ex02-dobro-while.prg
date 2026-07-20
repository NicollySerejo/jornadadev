FUNCTION Main()

    LOCAL cValor
    LOCAL nValor

    //? "Digite valores positivos."
    ? "Digite zero ou negativo para encerrar."

    ACCEPT "Digite um valor: " TO cValor
    nValor := Val(cValor)

    WHILE nValor > 0

        ? "Dobro do valor digitado:", nValor * 2

        ACCEPT "Digite um valor: " TO cValor
        nValor := Val(cValor)

    ENDDO

     ? "Fim do programa."

RETURN NIL