#language: pt

Funcionalidade: Fazer cadastro no sistema

    -Eu como usuario 
    -Desejo fazer cadastro com sucesso no sistema


@cadastro
Cenario:
    Dado que eu esteja na tela de cadastro
    Quando eu preencho todos os campos corretamente
    Entao verifico se vou para a tela de confirmação do email