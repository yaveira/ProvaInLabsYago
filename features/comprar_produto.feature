#language: pt
#utf-8

Funcionalidade: Comprar Produto
    Eu como cliente do OnlineStore
    Quero comprar um produto
    Para validar a sua compra com sucesso

@comprar
    Cenário: Comprar 1 Produto
    Dado que eu esteja logado
    Quando realizar a compra do produto
    Então validar o valor do frete e o valor total da compra