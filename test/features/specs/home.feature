#language: pt


@home
Funcionalidade: Criar memoryline

Contexto: Logar com sucesso
* usuário logado acessa a home

    # -Eu como usuario do remembre
    # -Desejo criar uma memoryline 
    # -para guardar momentos que realmente importam


@memoryline
Cenario:
    Quando eu clicar no botão de adicionar memoryline
    Entao verifico se foi criada uma nova memoryline
    E clico em um moment
    E realizo um comentario
    
# @sair
# Cenario:
#     Quando eu clicar no dropdown
#     Entao clico no campo sair
