Dado("usuário logado acessa a home") do
  login.load
  login.logar_usuario('jujuba','Aoishiori@07')
  home.load
  home.verificar_page
  #home.dropdown('juliana')
end

Quando("eu clicar no botão de adicionar memoryline") do
  home.add_memoryline
  sleep(2)
  home.popupCriarMemoryline
  sleep(2)
end









































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