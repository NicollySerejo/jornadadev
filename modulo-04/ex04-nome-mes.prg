FUNCTION Main()

    LOCAL nMes
    ACCEPT "Informe o número do mês (1 a 12): " TO nMes
    nMes := Val(nMes)

    DO CASE
        CASE nMes == 1
            ? "Janeiro"
        CASE nMes == 2
            ? "Fevereiro"
        CASE nMes == 3
            ? "Março"
        CASE nMes == 4
            ? "Abril"
        CASE nMes == 5
            ? "Maio"
        CASE nMes == 6
            ? "Junho"
        CASE nMes == 7
            ? "Julho"
        CASE nMes == 8
            ? "Agosto"
        CASE nMes == 9
            ? "Setembro"
        CASE nMes == 10
            ? "Outubro"
        CASE nMes == 11
            ? "Novembro"
        CASE nMes == 12
            ? "Dezembro"
        OTHERWISE
            ? "Mês inválido!"

    ENDCASE

    RETURN NIL
    
