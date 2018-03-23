class Comprar < SitePrism::Page

    elements :put_product, '.wpsc_buy_button'
    element :view_cart, '.cart_icon'
    element :button_next, '.step2'
    element :shipping_country, '#uniform-current_country'
    element :shipping_state, :xpath, '//*[@id="change_country"]/input[2]'
    element :calculate_shipping, :xpath, '//*[@id="change_country"]/input[4]'
    elements :value_shipping, '.wpsc_totals'
    element :button_purchase, '.input-button-buy'
    element :value_total, :xpath, '//*[@id="post-30"]/div/div[2]/table/tbody/tr/td[4]'

    def comprar(country, state)
        put_product.first.click
        view_cart.click
        button_next.click
        shipping_country.select(country)
        shipping_state.set(state)
        calculate_shipping.click

        valor_frete = value_shipping[1].text.sub! '$',''
        shipping = valor_frete.to_f

        if shipping >= 0
            puts "Será cobrado o frete no valor de #{value_shipping[1].text}"
        else shipping <= 0
            puts "Não será cobrado o frete!"
        end

        button_purchase.click
        wait_for_value_total
    end
end