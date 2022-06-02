# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

wrapfood = { name: 'Wrap Food', address: '7 ue, Paris E2 tyrE', phone_number: '537654645', category: 'french' }
chinefood = { name: 'Food chine', address: '7 Boundary St, London E2 7JE', phone_number: '5348763', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Tanana High St, London E1 6PQ', phone_number: '5387653', category: 'italian' }
dishoom = { name: 'Dishoom', address: '7 Bound St, London E2 7JE', phone_number: '5348763', category: 'chinese' }
pasta_west = { name: 'Pasta West', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '538676763', category: 'italian' }
goodfood = { name: 'Food fine', address: '7 Bound St, Paris E2 7JE', phone_number: '53765463', category: 'belgian' }

[wrapfood, chinefood, pizza_east, dishoom, pasta_west, goodfood].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
