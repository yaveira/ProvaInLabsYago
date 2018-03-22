class Login < SitePrism::Page
    
    set_url 'http://store.demoqa.com/'

    element :my_account, '.account_icon'
    element :username_field, '#log'
    element :password_field, '#pwd'
    element :button_login, '#login'
    element :account_page, :xpath, './/*[@id="post-31"]/div/div/table/tbody/tr/td'

    def logar(login, password)
        my_account.click
        username_field.set(login)
        password_field.set(password)
        button_login.click
        wait_for_account_page
    end
end