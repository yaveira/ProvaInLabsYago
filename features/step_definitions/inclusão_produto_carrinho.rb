Quando("incluir os produtos {string},{string},{string}") do |product1, product2, product3|
    #Add Produto 1
    @buscar.buscar product1
    @add_product.add_product
        
    #Add Produto 2
    @buscar.buscar product2
    @add_product.add_product
            
    #Add Produto 3
    @buscar.buscar product3
    @add_product.add_product
  end
  
  Então("validar a inclusão dos produtos no carrinho") do
    @incluir.incluir
  end