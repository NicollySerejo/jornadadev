REQUEST HB_LANG_PT

FUNCTION Main()
    LOCAL cNome  := "Nicolly Serejo"
    LOCAL cCidade := "São Paulo"
    LOCAL cCurso  := "ADVPL/Harbour"

    hb_cdpSelect("PTISO") 
    hb_langSelect("PT")

    QOut("=======================================")
    QOut("FICHA DE APRESENTAÇÃO")
    QOut("=======================================")

    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)
    QOut("Data: " + DToC(Date()))
    QOut("Hora: " + Time())

RETURN NIL