## Exercício 4 — Refinamento sucessivo

## Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:

## “Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o
subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a
pagar.”

**Resposta**

## Nível 1: Visão Geral
O sistema tem como função receber registro de itens de compra, aplicar desconto baseado no cartão fidelidade e exibe valor final da compra para o cliente.

## Nível 2: Detalhamento por Etapas 
1. **Entrada de dados**: Registrar os itens e verificar o cartão fidelidade.
2. **Processamento**: Somar os valores (subtotal) e aplicar o desconto se necessário.
3. **Saída de dados**: Mostrar o total final a pagar.

## Nível 3: Detalhamento Técnico 

### 1. Registro de Itens e Subtotal
* Iniciar o `subtotal` com o valor zero.
* Para cada item passado no caixa:
  * Ler o preço do item.
  * Somar o preço ao `subtotal`.
  * Repetir até que não haja mais itens.

### 2. Verificação de Fidelidade e Desconto
* Perguntar ao cliente se possui cartão fidelidade.
* Se a resposta for "Sim":
  * Calcular `desconto = subtotal * 0.05`.
  * Calcular `total_pagar = subtotal - desconto`.
* Se a resposta for "Não":
  * O `desconto` é zero.
  * Calcular `total_pagar = subtotal`.

### 3. Finalização
* Exibir na tela o valor do `subtotal`.
* Exibir o valor do `desconto`.
* Exibir o `total_pagar` final.

