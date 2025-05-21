Feature: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Dado que estou na página de um produto da EBAC-SHOP

  Scenario: Todos os campos obrigatórios devem ser preenchidos
    Quando eu tento adicionar o produto ao carrinho
    Então deve ser obrigatório selecionar cor, tamanho e quantidade

  Scenario: Limite máximo de produtos por venda
    Quando eu seleciono a quantidade de 11 produtos
    Então deve exibir uma mensagem indicando que o limite é de 10 produtos por venda

  Scenario: Botão "limpar" retorna ao estado original
    Dado que eu selecionei cor, tamanho e quantidade
    Quando eu clico no botão "limpar"
    Então as opções devem retornar ao estado original (sem seleção)