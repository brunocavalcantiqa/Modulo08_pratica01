            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na tela de login "Minha Conta"

            Cenário: Login realizado com sucesso usando dados válidos
            Quando eu informo o e-mail "cliente@ebacshop.com.br", informo a senha "SenhaValida123" e eu clico no botão "Login"
            Então eu devo ser direcionado para a tela de checkout

            Cenário: Exibir mensagem de alerta ao inserir dados inválidos
            Quando eu informo usuário incorreto com <usuário>, senha incorreta com <senha> e clico no botão "Login"
            Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos" e eu devo permanecer na tela de login

            Esquema do cenário
            | usuario                 | senha           |
            | cliente@ebacshop.com.br | SenhaValida123  |
            | usuario_incorreto       | senha_incorreta |
            | usuario_incorreto       | SenhaValida123  |
            | cliente@ebacshop.com.br | senha_incorreta |

            Cenário: Tentar login com o campo de usuário ou e-mail vazio
            Quando eu não informo o usuário ou e-mail ", informo a senha "SenhaValida123"
            E eu clico no botão "Login"
            Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos" e eu devo permanecer na tela de login

            Cenário: Tentar login com o campo de senha vazio
            Quando eu informo o usuário ou e-mail "cliente@ebacshop.com.br", não informo a senha 
            E eu clico no botão "Login"
            Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos" e eu devo permanecer na tela de login