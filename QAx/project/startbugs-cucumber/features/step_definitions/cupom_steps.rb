
Dado('que iniciei a compra do item:') do |table|
  product = table.rows_hash
  
  @home.open
  @home.buy(product[:name])
end

Quando('aplico o seguinte cupom:{string}') do |coupon_code|
  find('input[placeholder="Código do cupom"]').set(coupon_code)
  click_on 'Aplicar'
end

Então('o valor final da compra deve ser atualizado para {string}') do |final_price|
 @checkout.assert_total_price(final_price)
end
