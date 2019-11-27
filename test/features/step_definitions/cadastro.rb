Dado("que eu esteja na tela de cadastro") do
   cadastro.load
  end
  
  Quando("eu preencho todos os campos corretamente") do
    cadastro.cadastrar_usuario('jefferson','oliveira','jeffyoliveira@gmail.com','jeffyyyy','Goku@003','03-11-1994')
  end
  
  Entao("verifico se vou para a tela de confirmação do email") do
    expect(page).to have_current_path('http://remembertest.s3-website-us-east-1.amazonaws.com/singupconfirmation', url: true)
    # cadastro.msg_cadastro_sucess
  end
  
Quando("eu preencho todos os campos incorretamente") do
  cadastro.cadastrar_usuario('jefferson','oliveira','jeffyoliveira@gmail.com','jeffyyyy','Goku@003','03-11-1994')
end
  
Entao("verifico mensagem de erro na tela") do
  cadastro.mensagem_errocad

end
  