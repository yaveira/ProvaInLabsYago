class Buscar < SitePrism::Page

    elements :search_bar, :xpath, '//*[@id="main-nav"]/form/fieldset/input[1]'
    elements :add_cart, '.wpsc_buy_button'

    def buscar(product)
        search_bar.first.set(product)
        search_bar.first.send_keys :enter
        wait_for_add_cart
    end
end