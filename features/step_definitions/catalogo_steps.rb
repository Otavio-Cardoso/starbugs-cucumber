Quando('acesso a página principal da Starbugs') do
    @home.open
end

Entao('eu devo ver uma lista de cafes disponiveis') do
    expect(@home.coffee_list.size).to be > 0
end

Dado('que estou na página principal da Starbugs') do
    @home.open
end

Dado('que desejo comprar o seguinte produto:') do |table|
    @product = table.rows_hash
  end

Quando('inicio a compra desse item') do
    @home.buy(@product[:name])
end

Entao('devo ver a pagina de Checkout com os detalhes do produto') do
    @checkout.assert_product_details(@product)
end

Entao('o valor total de compra deve ser de {string}') do |total_price|
    @checkout.assert_total_price(total_price)

end

Entao('devo ver um popup informando que o produto está indisponivel') do
    @popup.have_text('Produto indisponível')

end
