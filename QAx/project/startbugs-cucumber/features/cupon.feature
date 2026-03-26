#language: pt

Funcionalidade: Uso de Cuponos no Checkout

Como um usuário da Starbugs 
Eu quero poder aplicar cupons de desconto na página de checkout
para que possa obter reduções no preço de produtos aumentando a satisfação com a minha experiência de compra.

Cenário: Aplicar Desconto de 20%

Dado que estou na página de checkout
E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
E que a taxa de entrega é de R$ 10,00
E o valor total é de R$ 29,99
E tenho um cupom com 20% de desconto "MEUCAFE"
Quando eu aplico o cupom de desconto
Então o desconto de 20% é aplicado ao valor do Café com Leite
E o valor final da compra deve ser atualizado para R$ 25,99

Cenário: Cupom Exprirado

Dado que estou na página de checkout
E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
E que a taxa de entrega é de R$ 10,00
E o valor total é de R$ 29,99
E tenho um cupom que está expirado "PROMO20"
Quando aplico esse cupom de desconto 
Então tenho que ver a seguinte notificação: "Cumpom expirado!"
E o valor final deve permanecer o mesmo 

Cenário: Cupom Inválido

Dado que estou na página de checkout
E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
E que a taxa de entrega é de R$ 10,00
E o valor total é de R$ 29,99
E tenho um cupom com código inválido "PROMO100"
Quando aplico esse cupom de desconto 
Então tenho que ver a seguinte notificação: "Cumpom inválido"
E o valor final deve permanecer o mesmo 
