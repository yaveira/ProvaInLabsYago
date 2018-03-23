Dado("que eu esteja logado no OnlineStore") do
    @logar = Login.new
    @buscar = Buscar.new
    @comprar = Comprar.new
    @validar = ValidarValorFinal.new
    
    @logar.load
    @logar.logar 'yagooliv', 'teste@teste'
end
  
Quando("realizar a compra do produto") do
    @buscar.buscar 'Iphone'
    @comprar.comprar 'Brazil', 'SP'
end
  
Então("validar o valor do frete e o valor total da compra") do
    @validar.validar
end