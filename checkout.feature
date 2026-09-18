            #language: pt

            Funcionalidade: Cadastro na tela de Checkout
            Como cliente da EBAC-SHOP
            Quero fazer/concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o cliente está na tela de Checkout da EBAC-SHOP

            Cenário: Cadastro realizado com sucesso ao preencher todos os campos obrigatórios
            Dado que o cliente está na tela de Checkout da EBAC-SHOP, preenche o campo nome "Bruno, o campo Sobrenome "Santos", o campo E-mail "bruno.santos@email.com"
            E o campo País "Brasil", o campo Endereço "Rua das Flores, 123", o campo Cidade "Recife", o campo CEP "51000-000", o campo Telefone "(81) 99999-0001"
            Quando o cliente clicar em "Finalizar compra"
            Então o cadastro deve ser concluído com sucesso e a compra deve ser finalizada

            Exemplos:
            | nome    | sobrenome | email                  | pais   | endereco             | cidade    | cep       | telefone        |
            | Bruno   | Santos    | jose.santos@email.com  | Brasil | Rua das Flores, 123  | Recife    | 51000-000 | (81) 99999-0001 |
            | Vania   | Santos    | vania.santos@email.com | Brasil | Rua Chico Mendes,113 | Petrolina | 56000-000 | (87) 98888-0002 |

            Cenário: Sistema impede cadastro com e-mail em formato inválido
            Dado que o cliente está na tela de Checkout da EBAC-SHOP
            Quando o cliente preenche o campo E-mail com "email_invalido" e clicar em "Finalizar compra"
            Então o sistema deve exibir a mensagem de erro "email invalido" e o cadastro não deve ser concluído

            Exemplos:
            | email_invalido        | mensagem_erro                          |
            | jose.ernesto@         | Informe um e-mail em um formato válido |
            | jose.ernesto.com      | Informe um e-mail em um formato válido |
            | jose ernesto@mail.com | Informe um e-mail em um formato válido |
            | @email.com            | Informe um e-mail em um formato válido |

            Cenário: Sistema exibe alerta ao tentar cadastrar com campos obrigatórios vazios
            Dado que o cliente está na tela de Checkout da EBAC-SHOP
            Quando o cliente deixa o campo "Sobrenome" vazio e clica em "Finalizar compra"
            Então o sistema deve exibir uma mensagem de alerta indicando que o campo "Sobrenome" é obrigatório e o cadastro não deve ser concluído

            Exemplos:
            | campo_obrigatorio |
            | Nome              |
            | Sobrenome         |
            | E-mail            |
            | País              |
            | Endereço          |
            | Cidade            |
            | CEP               |