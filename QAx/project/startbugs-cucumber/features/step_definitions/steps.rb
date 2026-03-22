Quando('eu acesso a página principal da StartBugs') do
  visit 'https://starbugs.vercel.app/'
 
end

Então('eu devo ver uma lista de cafés disponíveis') do
  products = all('.coffee-item')
  expect(products.size).to be > 0
end

Dado('que estou na página principal da StarBugs') do
  visit 'https://starbugs.vercel.app/'
end

Dado('que desejo comprar o seguinte produto:') do |table|
@product = table.rows_hash
end

Quando('incio a compra desse item') do
  product = find('.coffee-item', text: @product['name'])
  product.find('.buy-coffee').click
 
end

Então('devo ver a página de checkout com os detalhes do produto') do
  product_title = find('.item-details h1')
  expect(product_title.text).to eq(@product['name']) 

  sub_price = find('.subtotal .sub-price')
  expect(sub_price.text).to eq(@product['price'])

  delivery = find('.delivery-price')
  expect(delivery.text).to eq(@product['delivery'])
end

Então('o valor total da compra deve ser de {string}') do |total_price|
  price = find('.total-price')
  expect(price.text).to eq(total_price)
end

Então('devo ver um popup informando que o produto está indisponível') do
  sleep 10
end




