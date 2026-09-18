            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com o meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na pagina de produto "Augusta Pullover Jacket"

            Cenário: Configurar produto com todos os campos obrigatórios preenchidos
            Dado que estou na pagina de produto "Augusta Pullover Jacket"
            Quando eu seleciono a cor "Orange", o tamanho "M", a quantidade "2", e clico no botão "Comprar"
            Então o sistema deve atualizar para a pagina de informações de endereço e pagamento

            Cenário: Bloquear a compra quando um campo obrigatório não é preenchido
            Dado que estou na pagina de produto "Augusta Pullover Jacket"
            Quando eu seleciono a cor "Green", não seleciono o tamanho, informo a quantidade "1" e clico no botão "Comprar"
            Então o sistema não deve permitir o produto ser inserido no carrinho e exibir uma mensagem informando que o campo "tamanho" é obrigatório 

            Cenário: Validar o limite máximo de 10 produtos por venda
            Dado que estou na pagina do produto "Augusta Pullover Jacket"
            Quando eu seleciono a cor "Blue", seleciono o tamanho "M", informo a quantidade "11" e clico no botão "Comprar"
            Então o sistema deve Bloquear e exibir mensagem: "Limite maximo de produtos excedido"

            Cenário: Restaurar o estado original ao clicar no botão "limpar"
            Dado que esou na pagina do produto "Augusta Pullover Jacket"
            Quando eu seleciono a cor "Pink", o tamanho "XS", a quantidade "5" e clicar no botão "limpar"
            Então todas as configurações devem voltar ao valor padrão inicial