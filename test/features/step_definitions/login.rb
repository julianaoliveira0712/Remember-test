Dado("que eu esteja na tela de login") do
    login.load
  end
  
  Quando("insiro credenciais do usuario validas") do
    login.logar_usuario('jujuba','Aoishiori@07')
  end
  
  Entao("verifico se estou na home") do
    expect(page).to have_current_path('http://remembertest.s3-website-us-east-1.amazonaws.com/userhome', url: true)
    # home.load
    # home.add_memoryline
    # home.memoryline_create_sucess
  end

  Quando("eu insiro credenciais invalidas") do
    login.load
    sleep(1)
    login.logar_usuario('23785534000','rewurewoui')
    sleep(2)
end

Entao("verifico o pop-up de erro na tela e saiu") do
  login.mensagem_erro
end