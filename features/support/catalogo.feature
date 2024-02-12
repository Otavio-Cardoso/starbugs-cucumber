#language: pt

Funcionalidade: Catálogo de cafés
    Como um usuario do site, eu quero ver o catalogo na pagina principal
    Para que eu possa escolher e saber mais sobre os produros disponiveis

Cenário: Acessar o catalogo de cafes na pagina principal

    Quando acesso a página principal da Starbugs
    Entao eu devo ver uma lista de cafes disponiveis


Cenário: Iniciar a compra de um café

    Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto:
        |name     |Expresso Gelado |
        |price    | R$ 9,99        |
        |delivery | R$ 10,00       |
    Quando inicio a compra desse item
    Entao devo ver a pagina de Checkout com os detalhes do produto
        E o valor total de compra deve ser de "R$ 19,99"
        

Cenário: Café indisponivel
    
    Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto:
        |name     |Expresso Cremoso |
    Quando inicio a compra desse item
    Entao devo ver um popup informando que o produto está indisponivel