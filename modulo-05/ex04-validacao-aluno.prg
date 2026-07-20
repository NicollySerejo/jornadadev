FUNCTION Main()

    LOCAL cNome
    LOCAL cDisc
    LOCAL cNota
    LOCAL nNota1
    LOCAL nNota2
    LOCAL nMedia

    ? "=== Cadastro de Aluno ==="

    DO WHILE .T.

        ACCEPT "Nome: " TO cNome

        IF Len(Trim(cNome)) > 0
            EXIT
        ENDIF

        ? "Nome inválido."

    ENDDO

    DO WHILE .T.

        ACCEPT "Disciplina (3 letras maiúsculas): " TO cDisc
        cDisc := Trim(cDisc)

        IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
        ENDIF

        ? "Disciplina inválida."

    ENDDO

    DO WHILE .T.

        ACCEPT "Nota 1: " TO cNota
        nNota1 := Val(cNota)

        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF

        ? "Nota inválida."

    ENDDO

    DO WHILE .T.

        ACCEPT "Nota 2: " TO cNota
        nNota2 := Val(cNota)

        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF

        ? "Nota inválida."

    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    ?

    ? "Nome.......:", cNome
    ? "Disciplina.:", cDisc
    ? "Nota 1.....:", nNota1
    ? "Nota 2.....:", nNota2
    ? "Média......:", nMedia

RETURN NIL