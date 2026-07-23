FUNCTION Main()

    Local nCont
    Local cHora
    Local cHoraFormatada

    FOR nCont := 1 TO 30
        cHora:= ObterHora()
        cHoraFormatada:= FormatarHora(cHora)
        ExibirHora(cHoraFormatada)

         Inkey( 1 )

    NEXT
    
RETURN NIL


FUNCTION ObterHora()


    RETURN Time()

FUNCTION FormatarHora(cHora)

    cHoraFormatada := SubStr( cHora, 1, 2 ) + ":" + ;
                      SubStr( cHora, 4, 2 ) + ":" + ;
                      SubStr( cHora, 7, 2 )

RETURN cHoraFormatada

FUNCTION ExibirHora(cHora)

    ? "Hora atual: "
    ? cHora
