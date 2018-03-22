class Comprar < SitePrism::Page

    elements :put_product, '.wpsc_buy_button'
    element :view_cart, '.cart_icon'
    element :button_next, '.step2'
    element :shipping_country, '#uniform-current_country'
    element :shipping_state, :xpath, '//*[@id="change_country"]/input[2]'
    element :calculate_shipping, :xpath, '//*[@id="change_country"]/input[4]'
    element :button_purchase, '.input-button-buy'
    element :value_total, :xpath, '//*[@id="post-30"]/div/div[2]/table/tbody/tr/td[4]'

    def comprar(country, state)
        put_product.first.click
        view_cart.click
        button_next.click
        shipping_country.select(country)
        shipping_state.set(state)
        calculate_shipping.click
        button_purchase.click
        wait_for_value_total
    end
end