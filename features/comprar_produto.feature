#language: pt
#utf-8

Funcionalidade: Comprar Produto
    Eu como cliente do OnlineStore
    Quero comprar os produtos
    Para validar a sua compra com sucesso

@comprar
    Cenário: Comprar Produto
    Dado que eu esteja logado no OnlineStore
    Quando realizar a compra do produto
    Então validar o valor do frete e o valor total da compra