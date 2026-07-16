## Exercício 2 — Pseudocódigo

## a. Calcular a área de um retângulo (base × altura)

 **Resposta:**
´´´text
Algoritmo CalcularAreaRetangulo
Var
    base,altura,area:real

Inicio
    Escreva("Digite a base do retângulo: ")
    Leia(base)
    Escreva("Digite a altura do retângulo: ")
    Leia (altura)

    area <- base * altura 

    Escreva("A área do retângulo é: "area)
FIM
´´´             

## b. Verificar se um número é par ou ímpar

**Resposta:**
´´´text
Algoritmo VerificarParImpar
Var
    numero: inteiro
Inicio
    Escreva ("Digite um número: ")
    Leia(numero)

    Se (numero MOD 2 = 0) Então
        Escreva ("O número é par.")
    Senão
    Escreva("O número é ímpar.")
  FimSe
Fim    

## c. Encontrar o maior entre três números

**Resposta:**
```text
Algoritmo MaiorDeTres
Var
    n1, n2, n3, maior: inteiro
Inicio
    Escreva("Digite o primeiro número: ")
    Leia(n1)
    Escreva("Digite o segundo número: ")
    Leia(n2)
    Escreva("Digite o terceiro número: ")
    Leia(n3)
    
    Se (n1 >= n2) E (n1 >= n3) Então
        maior ← n1
    Senão Se (n2 >= n1) E (n2 >= n3) Então
        maior ← n2
    Senão
        maior ← n3
    FimSe
    
    Escreva("O maior número é: ", maior)
Fim
```