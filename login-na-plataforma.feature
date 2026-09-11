            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na tela de login "Minha Conta"

            Cenário: Login realizado com sucesso usando dados válidos
            Quando eu informo o usuário ou e-mail "cliente@ebacshop.com.br"
            E eu informo a senha "SenhaValida123"
            E eu clico no botão "Login"
            Então eu devo ser direcionado para a tela de checkout

            Cenário: Exibir mensagem de alerta ao inserir dados inválidos
            Quando eu informo o usuário ou e-mail "<usuario>"
            E eu informo a senha "<senha>"
            E eu clico no botão "Login"
            Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"
            E eu devo permanecer na tela de login

            Exemplos:
            | usuario                 | senha           |
            | usuario_incorreto       | SenhaValida123  |
            | cliente@ebacshop.com.br | senha_incorreta |
            | usuario_incorreto       | senha_incorreta |

            Cenário: Tentar login com o campo de usuário ou e-mail vazio
            Quando eu informo o usuário ou e-mail ""
            E eu informo a senha "SenhaValida123"
            E eu clico no botão "Login"
            Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"
            E eu devo permanecer na tela de login

            Cenário: Tentar login com o campo de senha vazio
            Quando eu informo o usuário ou e-mail "cliente@ebacshop.com.br"
            E eu informo a senha ""
            E eu clico no botão "Login"
            Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"
            E eu devo permanecer na tela de login