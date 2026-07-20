FUNCTION Main()

    LOCAL nValor1
    LOCAL nValor2

    ACCEPT "Primeiro valor: " TO nValor1
    ACCEPT "Segundo valor: " TO nValor2

    nValor1:=Val(nValor1)
    nValor2:=Val(nValor2)

    IF nValor1==nValor2
        ? "Os valores são iguais."
        
    elseif nValor1 > nValor2
        ? "Maior valor: " + Str(nValor1)
        ? "Menor valor: " + Str(nValor2)

    else  nValor1 < nValor2
        ? "Menor valor: " + Str(nValor1)
        ? "Maior valor: " + Str(nValor2)

    ENDIF
    
RETURN NIL
