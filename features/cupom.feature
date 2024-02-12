#language: pt

Funcionalidade: Uso de Cupons no Checkout

Contexto: 
    Dado que iniciei a compra do item:
        | name     | Café com Leite |
        | price    | R$ 19,99       |
        | delivery | R$ 10,00       |
        | total    | R$ 29,99       |

Cenário: Aplicar Desconto de 20%

    Quando aplico o seguinte cupom: "MEUCAFE"
    Entao o valor final da compra deve ser atualizado para "R$ 25,99"

Cenário: Cupom Expirado

    Quando aplico o seguinte cupom: "PROMO20"
    Entao devo ver a notificação: "Cupom expirado!"
        E o valor final da compra deve permanecer o mesmo

Cenário: Cupom Inválido

    Quando aplico o seguinte cupom: "PROMO100"
    Entao devo ver a notificação: "Cupom inválido!"
        E o valor final da compra deve permanecer o mesmo