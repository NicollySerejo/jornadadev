## Exercício 3 — Fluxograma

## a. Monte um fluxograma para o seguinte problema:

## “Uma loja dá desconto de 10% para compras acima de R$ 100. Leia o valor da compra e
mostre o valor final a pagar.”

**Resposta**


```mermaid
flowchart TD
    A([Início]) --> B[/Leia valorCompra/]
    B --> C{valorCompra > 100?}
    
    C -- Sim --> D[desconto = valorCompra * 0.10]
    D --> E[valorFinal = valorCompra - desconto]
    E --> G[/Escreva valorFinal/]
    
    C -- Não --> F[valorFinal = valorCompra]
    F --> G
    
    G --> H([Fim])
```
