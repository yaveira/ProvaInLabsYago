class ValidarValorFinal < SitePrism::Page

    element :value_total, :xpath, '//*[@id="post-30"]/div/div[2]/p[3]'

    def validar
        @overall_value = value_total.text
        puts "#{@overall_value}"
    end
end