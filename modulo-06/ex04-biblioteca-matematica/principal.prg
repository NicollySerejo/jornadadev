procedure Main()
    SET PROCEDURE TO matematica.prg

    local nFatorial := FatorialN(10)
    local lPrimo := EhPrimo(10)
    local nMMC := MMC(4,5)
    local nMDC := MDC(4,8)

    QOut(lTrim(Str(nFatorial)))
    QOut(lPrimo)
    QOut(lTrim(Str(nMMC)))
    QOut(lTrim(Str(nMDC)))
return