Funcionalidade: Configuração de produto

  Como um cliente da EBAC-SHOP  
  Quero configurar meu produto de acordo com meu tamanho e preferência  
  E escolher a quantidade desejada  
  Para depois adicioná-lo ao carrinho

  Contexto:
    Dado que estou na página de um produto da EBAC-SHOP

  Cenário: Preenchimento obrigatório de todos os campos
    Quando tento adicionar o produto ao carrinho
    Então o sistema exige a seleção de cor, tamanho e quantidade

  Cenário: Limite máximo de produtos por compra
    Quando seleciono a quantidade de 11 produtos
    Então o sistema exibe uma mensagem informando que o limite é de 10 produtos por compra

  Cenário: Botão "Limpar" redefine as seleções
    Dado que selecionei cor, tamanho e quantidade
    Quando clico no botão "Limpar"
    Então todas as opções devem retornar ao estado original (sem seleção)
