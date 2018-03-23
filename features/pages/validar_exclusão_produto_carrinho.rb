class RemoverProduto < SitePrism::Page

    elements :valor_produto, '.pricedisplay'
    element :button_remove0, :xpath, '//*[@id="checkout_page_container"]/div[1]/table/tbody/tr[2]/td[6]/form/input[4]'
    element :button_remove1, :xpath, '//*[@id="checkout_page_container"]/div[1]/table/tbody/tr[3]/td[6]/form/input[4]'
    element :button_remove2, :xpath, '//*[@id="checkout_page_container"]/div[1]/table/tbody/tr[4]/td[6]/form/input[4]'

    def remover
        valor1 = valor_produto[1].text.sub! '$',''
        valor2 = valor_produto[4].text.sub! '$',''
        valor3 = valor_produto[7].text.sub! '$',''

        valor = [valor1.to_f, valor2.to_f, valor3.to_f]
        maior = valor.max

        if maior == valor1.to_f
            button_remove0.click
            puts "Valor maior removido!"

        elsif maior == valor2.to_f
            button_remove1.click
            puts "Valor maior removido!"

        else maior == valor3.to_f
            button_remove2.click
            puts "Valor maior removido!"   
        end
    end
end