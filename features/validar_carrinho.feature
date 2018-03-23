#language: pt
#utf-8

@testes_carrinho
Funcionalidade: Validar Carrinho de Compras
    Eu como cliente do OnlineStore
    Quero adicionar e remover produtos ao meu carrinho
    Para validar a atualização com sucesso

    Contexto: Acesso ao site OnlineStore
    Dado que eu esteja logado no site OnlineStore

@validar_remoção
    Esquema do Cenário: Validar a remoção do produto mais caro do carrinho
    Quando adicionar os produtos "<produto1>","<produto2>","<produto3>" para exclusão
    Então validar a remoção do produto com o valor mais elevado

    Exemplos:
    |   produto1   |    produto2   |    produto3   |
    |   Iphone     |    Mac        |    Magic      |
    |   Mac        |    Sennheiser |    Magic      |

@validar_inclusão
    Esquema do Cenário: Validar a inclusão de 3 produtos no carrinho
    Quando incluir os produtos "<product1>","<product2>","<product3>"
    Então validar a inclusão dos produtos no carrinho

    Exemplos:
    |   product1   |    product2   |    product3   |
    |   Iphone     |    Mac        |    Magic      |
    |   Mac        |    Sennheiser |    Magic      |