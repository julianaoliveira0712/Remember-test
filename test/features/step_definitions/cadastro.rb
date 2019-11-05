Dado("que eu esteja na tela de cadastro") do
   cadastro.load
  end
  
  Quando("eu preencho todos os campos corretamente") do
    cadastro.cadastrar_usuario('jefferson','oliveira','jeffyoliveira003@gmail.com','jeffy','goku003','1994-11-03')
  end
  
  Entao("verifico se vou para a tela de confirmação do email") do
    expect(page).to have_current_path('http://remembertest.s3-website-us-east-1.amazonaws.com/singupconfirmation', url: true)
    # cadastro.msg_cadastro_sucess
  end
  