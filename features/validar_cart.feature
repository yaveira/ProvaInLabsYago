#language: pt
#utf-8

Funcionalidade: Validar Carrinho
    Eu como cliente do OnlineStore
    Quero adicionar produtos ao meu carrinho
    Para validar se foi adicionado com sucesso

@cart
    Esquema do Cenário: Validar carrinho
    Dado que eu esteja logado no site
    Quando adicionar os "<produto1>","<produto2>","<produto3>" produtos
    Então validar eles no carrinho

        Exemplos:
    |produto1   |produto2   |produto3   |
    |Iphone     |Mac        |Magic      |
    |Mac        |Sennheiser |Magic      |