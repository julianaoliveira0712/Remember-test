Dado("que eu esteja na tela de login") do
    login.load
  end
  
  Quando("insiro credenciais do usuario validas") do
    login.logar_usuario('jujuba','Aoishiori@07')
  end
  
  Entao("verifico se estou na home") do
    expect(page).to have_current_path('http://remembertest.s3-website-us-east-1.amazonaws.com/userhome', url: true)
  end