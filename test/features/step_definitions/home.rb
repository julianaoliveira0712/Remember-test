Dado("usuário logado acessa a home") do
  login.load
  login.logar_usuario('jujuba','Aoishiori@07')
  home.load
  home.verificar_page
  home.dropdown('juliana')
end

Quando("eu clicar no botão de adicionar memoryline") do
  home.add_memoryline
  home.popupCriarMemoryline
end

Entao("verifico se foi criada uma nova memoryline") do
  home.verificar_page
  home.entrarMemoryline
end

Entao("clico em um moment") do
 home.verMoment
end

Entao("realizo um comentario") do
 home.fazerComment
end

# Quando("eu clicar no dropdown") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Entao("clico no campo sair") do
#   pending # Write code here that turns the phrase above into concrete actions
# end










































# Dado("usuário logado acessa a home") do
#     login.load
#     login.logar_usuario('jujuba','Aoishiori@07')
#     home.load
# end
# # Dado("que eu esteja na home") do
# #   home.load
# # end

# Quando("eu clicar no botão de adicionar memoryline") do
#   home.add_memoryline
# end

# Entao("verifico se foi criada uma nova memoryline") do
# end

# Quando("eu clicar no dropdown") do
#     home.perfil
# end

# Entao("clico no campo sair") do
#     home.sair
# end