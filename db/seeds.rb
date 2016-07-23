require './models/category'
require 'faker'

# seeds.db is a way of automating the population of the database with testing data
(0..10).each do |i|
  Category.create(name: Faker::Commerce.product_name)
end
