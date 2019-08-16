require 'faker'

50.times do
  product = Product.create!(
    :name => Faker::Food.dish,
    :description => Faker::Food.description,
    :cost => rand(5..300),
    :country_of_origin => Faker::Address.country
  )
end
