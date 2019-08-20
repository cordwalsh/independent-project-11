require 'faker'

Product.destroy_all
Review.destroy_all

50.times do
  product = Product.create!(
    :name => Faker::Cannabis.strain,
    :description => Faker::Cannabis.health_benefit,
    :cost => rand(5..30),
    :country_of_origin => Faker::Address.country
  )
  50.times do
    product.reviews.create!(:author => Faker::Name.name, :content_body => Faker::Coffee.notes, :rating => rand(1..5), :product_id => product.id)
  end
end
