Dado("que eu esteja logado no site OnlineStore") do
    @logar = Login.new
    @buscar = Buscar.new
    @add_product = AddProduto.new
    @remover = RemoverProduto.new
    @incluir = IncluirProduto.new

    @logar.load
    @logar.logar 'yagooliv', 'teste@teste'
  end
  
  Quando("adicionar os produtos {string},{string},{string} para exclusão") do |produto1, produto2, produto3|
        #Add Produto 1
        @buscar.buscar produto1
        @add_product.add_product
    
        #Add Produto 2
        @buscar.buscar produto2
        @add_product.add_product
        
        #Add Produto 3
        @buscar.buscar produto3
        @add_product.add_product

        @incluir.incluir
  end
  
  Então("validar a remoção do produto com o valor mais elevado") do
    @remover.remover
  end