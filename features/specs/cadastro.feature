#language: pt

Funcionalidade: Cadastro

    Cenário: Cadastro com sucesso

        Dado que acesso a tela de Cadastro
        Quando eu submeto as credenciais do formulário: 
            |nome|Adones|
            |email|adones@qa.io|
            |senha|123456|
            |perfil|QA|
        Então devo ver a mensagem: "Tudo certo, recebemos seus dados!"


