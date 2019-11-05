class Login_page < SitePrism::Page
    set_url 'http://remembertest.s3-website-us-east-1.amazonaws.com/'

    element :username, '#username'
    element :password, '#password'
    element :button_entrar, '.MuiTouchRipple-root'
    element :cadastre_se, 'a[href="/signup"]'


    def logar_usuario(user, senha)
        username.set user
        sleep(2)
        password.set senha
        sleep(2)
        click_button 'Entrar'
        sleep(1)
    end

    def cadastrar_se
        cadastre_se.click
    end
end