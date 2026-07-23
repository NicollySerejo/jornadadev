#define SEMESTRES 4

procedure Main()
    local nNumeroAlunos := 0
    local nI := 0
    local nJ := 1

    local cNomeAluno := ""
    local nNota := 0
    // local aListaAlunos :=  {{"Derli", 10,8,6,9}, {"Ana", 10,8,6,1}}
    local aListaAlunos :=  {}
    local aObjetoAluno := {}

    local aluno
    local nMedia := 0

    accept "Digite a quantidade de alunos para registrar as notas: " to nNumeroAlunos

    for nI := 1 to Val(nNumeroAlunos)
        accept "Digite o Nome do " + AllTrim(Str(nI)) +"° de " + nNumeroAlunos + ": " to cNomeAluno
        
        AAdd(aObjetoAluno, cNomeAluno)

        QOut("Aluno: " + cNomeAluno)

        for nJ := 1 to SEMESTRES
            accept "Digite a " + AllTrim(Str(nJ)) + "° nota: " to nNota

            AAdd(aObjetoAluno, Val(nNota))
        next

        AAdd(aListaAlunos, aObjetoAluno)
        aObjetoAluno := {}
    next

    QOut("Lista final de aprovados e reprovados totvs: ")
    for each aluno in aListaAlunos
        nMedia := CalcularMediaAluno(aluno[2],aluno[3],aluno[4],aluno[5], SEMESTRES)
        QOut("Aluno: " + aluno[1])
        QOut(hb_StrFormat("Média: %s", nNotaMediaToC(nMedia)))
        QOut(hb_StrFormat("Status: %s", StatusAprovacaoAlunoC(nMedia)))
        QOut("")
    next
return

function CalcularMediaAluno(nNota1, nNota2, nNota3, nNota4, semestres)
    local nMedia := (nNota1 + nNota2 + nNota3 + nNota4) / semestres
return nMedia

function StatusAprovacaoAlunoC(nMedia)
return if(nMedia >= 7, "Aprovado", "Reprovado")

function nNotaMediaToC(nNota)

return AllTrim(Str(nNota, 4, 2))