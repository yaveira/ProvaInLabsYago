Dado("que eu esteja logado no site") do
    @logar = Login.new
    @buscar = Buscar.new
    @add_product = AddProduto.new
    @remover = Remover.new

    @logar.load
    @logar.logar 'yagooliv', 'teste@teste'
  end                                                                             

Quando("adicionar os {string},{string},{string} produtos") do |produto1, produto2, produto3|
    #Add Produto 2
    @buscar.buscar produto1
    @add_product.add_product
    #Add Produto 2
    @buscar.buscar produto2
    @add_product.add_product
    #Add Produto 2
    @buscar.buscar produto3
    @add_product.add_product
    end
  
Então("validar eles no carrinho") do
    @remover.remover
    end