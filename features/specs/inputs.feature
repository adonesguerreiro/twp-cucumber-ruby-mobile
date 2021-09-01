#language: pt

Funcionalidade: Inputs
    @radio
    Cenário: Radio Button

        Dado que acesso a tela Botões de Radio
        Quando eu escolho a opção Ruby 
        Então esta opção deve ser marcada

    @checkbox
    Cenário: Checkbox 
    
        Dado que acesso a tela de Checkbox
        Quando eu marco a opção Ruby
        Então está opção deve estar marcada

    @checkbox2
    Cenário: Todas as techs que usam o Appium

        Dado que acesso a tela de Checkbox
        Quando eu marco as seguintes techs:
            |tech|
            |Ruby|
            |Java|
            |Python|
            |Javascript|
            |C#|
            |Robot Framework|
        Então todas essas opções devem estar marcadas