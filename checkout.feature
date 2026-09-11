            #language: pt

            Funcionalidade: Cadastro na tela de Checkout
            Como cliente da EBAC-SHOP
            Quero fazer/concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o cliente está na tela de Checkout da EBAC-SHOP

            Cenário: Cadastro realizado com sucesso ao preencher todos os campos obrigatórios
            Dado que o cliente preenche o campo "Nome" com "<nome>"
            E preenche o campo "Sobrenome" com "<sobrenome>"
            E preenche o campo "E-mail" com "<email>"
            E seleciona o campo "País" com "<pais>"
            E preenche o campo "Endereço" com "<endereco>"
            E preenche o campo "Cidade" com "<cidade>"
            E preenche o campo "CEP" com "<cep>"
            E preenche o campo "Telefone" com "<telefone>"
            Quando o cliente clicar em "Finalizar compra"
            Então o cadastro deve ser concluído com sucesso
            E a compra deve ser finalizada

            Exemplos:
            | nome    | sobrenome | email                  | pais   | endereco             | cidade    | cep       | telefone        |
            | Matheus | Santos    | jose.santos@email.com  | Brasil | Rua das Flores, 123  | Recife    | 51000-000 | (81) 99999-0001 |
            | Vania   | Santos    | vania.santos@email.com | Brasil | Rua Chico Mendes,113 | Petrolina | 56000-000 | (87) 98888-0002 |

            Cenário: Sistema impede cadastro com e-mail em formato inválido
            Dado que o cliente preenche todos os campos obrigatórios do cadastro
            Quando o cliente preenche o campo "E-mail" com "<email_invalido>"
            E tenta clicar em "Finalizar compra"
            Então o sistema deve exibir a mensagem de erro "<mensagem_erro>"
            E o cadastro não deve ser concluído

            Exemplos:
            | email_invalido        | mensagem_erro                          |
            | jose.ernesto@         | Informe um e-mail em um formato válido |
            | jose.ernesto.com      | Informe um e-mail em um formato válido |
            | jose ernesto@mail.com | Informe um e-mail em um formato válido |
            | @email.com            | Informe um e-mail em um formato válido |

            Cenário: Sistema exibe alerta ao tentar cadastrar com campos obrigatórios vazios
            Dado que o cliente está na tela de Checkout com o formulário de cadastro em branco
            Quando o cliente deixa o campo "<campo_obrigatorio>" vazio
            E clica em "Finalizar compra"
            Então o sistema deve exibir uma mensagem de alerta indicando que o campo "<campo_obrigatorio>" é obrigatório
            E o cadastro não deve ser concluído

            Exemplos:
            | campo_obrigatorio |
            | Nome              |
            | Sobrenome         |
            | E-mail            |
            | País              |
            | Endereço          |
            | Cidade            |
            | CEP               |