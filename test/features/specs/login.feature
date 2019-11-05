#language: pt

Funcionalidade: Fazer login no sistema

    -Eu como usuario 
    -Desejo fazer login com sucesso no sistema


@login
Cenario:
    Dado que eu esteja na tela de login
    Quando insiro credenciais do usuario validas
    Entao verifico se estou na home
