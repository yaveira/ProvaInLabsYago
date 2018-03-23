class IncluirProduto < SitePrism::Page

    element :view_cart, '.cart_icon'
    elements :qtd_produto, '.product_image'

    def incluir
        view_cart.click

        all_product_cart = qtd_produto.size
        puts "Existem #{all_product_cart} produtos no carrinho."
    end
end