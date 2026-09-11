            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com o meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na pagina de produto "Augusta Pullover Jacket"

            Cenário: Configurar produto com todos os campos obrigatórios preenchidos
            Quando eu seleciono a cor "Orange"
            E eu seleciono o tamanho "M"
            E eu informo a quantidade "2"
            E eu clico no botão "Comprar"
            Então o produto deve ser inserido no carrinho com a cor "Orange", tamanho "M" e quantidade "2"

            Cenário: Bloquear a compra quando um campo obrigatório não é preenchido
            Quando eu seleciono a cor "<cor>"
            E eu seleciono o tamanho "<tamanho>"
            E eu informo a quantidade "<quantidade>"
            E eu clico no botão "Comprar"
            Então o sistema deve exibir uma mensagem informando que o campo "<campo_faltante>" é obrigatório
            E o produto não deve ser inserido no carrinho

            Cenário: Validar o limite máximo de 10 produtos por venda
            Quando eu seleciono a cor "Blue"
            E eu seleciono o tamanho "M"
            E eu informo a quantidade "<quantidade>"
            E eu clico no botão "Comprar"
            Então o sistema deve "<resultado>"

            Cenário: Restaurar o estado original ao clicar no botão "limpar"
            Dado que eu selecionei a cor "Pink"
            E eu selecionei o tamanho "XS"
            E eu informei a quantidade "5"
            Quando eu clico no botão "limpar"
            Então nenhuma cor deve permanecer selecionada
            E nenhum tamanho deve permanecer selecionado
            E a quantidade deve voltar ao valor padrão inicial