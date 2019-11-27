class Cadastro_page < SitePrism::Page
    set_url 'signup'

    element :nome, '#name'
    element :sobrenome, '#last-name'
    element :email_set, '#email'
    element :username, '#username'
    element :senha, '#password'
    element :confirma_senha, '#confirm-password'
    element :data_nasc, '#birth-date'
    element :button_cadastrar, '.MuiButton-label'
    element :fazer_login, 'a[href="/"]'

    def cadastrar_usuario(name,last_name,email,user,password,data)
        #  binding.pry
        nome.set name 
        sobrenome.set last_name
        email_set.set email
        username.set user
        senha.set password
        confirma_senha.set password
        data_nasc.set data
        button_cadastrar.click
        # click_button 'CADASTRAR'
    end

    def fazer_login
        fazer_login.click
    end

    def msg_cadastro_sucess
        assert_text 'Cadastrado com sucesso!'
    end

    def voltar_login
        click_link 'Voltar para o login'
    end

    def mensagem_errocad
        assert_text('Ocorreu um erro inesperado :(')
    end

   
end
        