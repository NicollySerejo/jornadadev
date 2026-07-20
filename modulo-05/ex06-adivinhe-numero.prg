FUNCTION Main()

    LOCAL nSecreto
    LOCAL cPalpite
    LOCAL nPalpite
    LOCAL nTentativa
    LOCAL lAcertou := .F.

    nSecreto := HB_RandomInt(1,100)

    ? "=== Jogo: Adivinhe o Numero ==="
    ? "Voce tem 7 tentativas."

    FOR nTentativa := 1 TO 7


        ACCEPT "Digite um numero entre 1 e 100: " TO cPalpite

        nPalpite := Val(cPalpite)

        IF nPalpite == nSecreto

            ? "Parabens! Voce acertou!"
            lAcertou := .T.

            EXIT

        ELSEIF nPalpite < nSecreto

            ? "O numero secreto e MAIOR."

        ELSE

            ? "O numero secreto e MENOR."

        ENDIF

    NEXT


    IF ! lAcertou

        ? "Voce esgotou suas tentativas."

    ENDIF

    ? "O numero secreto era:", nSecreto

RETURN NIL