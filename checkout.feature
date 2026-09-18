            #language: pt

            Funcionalidade: Cadastro na tela de Checkout
            Como cliente da EBAC-SHOP
            Quero fazer/concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o cliente está na tela de Checkout da EBAC-SHOP

            Cenário: Cadastro realizado com sucesso ao preencher todos os campos obrigatórios
            Quando o cliente preencher todos os campos obrigatórios marcados com asterisco e clicar em "Finalizar compra"
            Então o cadastro deve ser concluído com sucesso e a compra deve ser finalizada

            Cenário: Sistema impede cadastro com e-mail em formato inválido
            Quando o cliente preencher o campo E-mail com <email_invalido> e clicar em "Finalizar compra"
            Então o sistema deve exibir a mensagem <mensagem_erro> e o cadastro não deve ser concluído.

            "Esquema do Cenário"
            | email_invalido        | mensagem_erro                          |
            | jose.ernesto@         | Informe um e-mail em um formato válido |
            | jose.ernesto.com      | Informe um e-mail em um formato válido |
            | jose ernesto@mail.com | Informe um e-mail em um formato válido |
            | @email.com            | Informe um e-mail em um formato válido |

            Cenário: Sistema exibe alerta ao tentar cadastrar com campos obrigatórios vazios
            Quando o cliente deixar de preencher algum campo obrigatório marcado com asterisco e clicar em "Finalizar compra"
            Então o sistema deve impedir o castro e indicar que existem campos obrigatórios que precisam ser preenchidos.