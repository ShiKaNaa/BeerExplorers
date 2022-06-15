# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Destroying all beers"
Beer.destroy_all

puts "Creating 50 beers"
50.times do
  Beer.create!(name: Faker::Beer.name, abv: Faker::Beer.alcohol, ibu: Faker::Beer.ibu, style: Faker::Beer.style, photo: Faker::LoremFlickr.image(size: "150x150", search_terms: ['beer']),country: Faker::Address.country, hops: Faker::Beer.hop)
end
puts "I'm done"
