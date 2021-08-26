#language: pt

Funcionalidade: Login
    
    Cenario: Login com sucesso

        Dado que acesso a tela login
        Quando eu submeto as credenciais: 
            |email|eu@papito.io|
            |senha|qaninja|
        Então devo ver a notificação: "Show! Suas credenciais são validas."