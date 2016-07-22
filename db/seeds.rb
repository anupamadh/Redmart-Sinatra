require './models/product'
require 'faker'

# seeds.db is a way of automating the population of the database with testing data
(0..10).each do |i|
  Product.create(name: Faker::Commerce.product_name, price:Faker::Commerce.price )
end
