FUNCTION Main()

    LOCAL nNum1
    LOCAL nNum2
    LOCAL nOpcao
    LOCAL nResultado

    nNum1 := LerNumero()

    nNum2 := LerNumero()

    nOpcao := LerOperacao()

    nResultado := Calcular( nNum1, nNum2, nOpcao )

    MostrarResultado( nResultado )

RETURN NIL


FUNCTION LerNumero()

    LOCAL nNumero

    INPUT "Digite um numero: " TO nNumero

RETURN nNumero


FUNCTION LerOperacao()

    LOCAL nOpcao

    ? "1 - Soma"
    ? "2 - Subtracao"
    ? "3 - Multiplicacao"
    ? "4 - Divisao"

    INPUT "Escolha uma operacao: " TO nOpcao

RETURN nOpcao


FUNCTION Calcular( nNum1, nNum2, nOpcao )

    DO CASE

        CASE nOpcao == 1

            RETURN nNum1 + nNum2


        CASE nOpcao == 2

            RETURN nNum1 - nNum2


        CASE nOpcao == 3

            RETURN nNum1 * nNum2


        CASE nOpcao == 4

            IF nNum2 == 0

                RETURN .F.

            ENDIF

            RETURN nNum1 / nNum2

    ENDCASE

RETURN .F.


FUNCTION MostrarResultado( nResultado )

    IF ValType( nResultado ) == "L"

        ? "Erro: divisao por zero."

    ELSE

        ? "Resultado:", nResultado

    ENDIF

RETURN NIL