class AddProduto < SitePrism::Page

    elements :include_product, '.wpsc_buy_button'
    element :alert_add, '.alert addtocart'

    def add_product
        include_product.first.click
        wait_for_alert_add
    end
end