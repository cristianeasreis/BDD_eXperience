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

Dado('que desejo compra um café {string}') do |product_name|
  @product_name = product_name
end

Dado('que esse produto custa {string}') do |product_price|
  @product_price = product_price
end

Dado('que o custo de entrega é de {string}') do |delivery_price|
  @delivery_price = delivery_price
end

Quando('incio a compra desse item') do
  product = find('.coffee-item', text: @product_name)
  product.find('.buy-coffee').click
 
end

Então('devo ver a página de checkout com os detalhes do produto') do
  product_title = find('.item-details h1')
  expect(product_title.text).to eq(@product_name) 

  sub_price = find('.subtotal .sub-price')
  expect(sub_price.text).to eq(@product_price)

  delivery = find('.delivery-price')
  expect(delivery.text).to eq(@delivery_price)
end

Então('o valor total da compra deve ser de {string}') do |total_price|
  price = find('.total-price')
  expect(price.text).to eq(total_price)
end

