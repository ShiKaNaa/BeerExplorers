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
  Beer.create!(name: Faker::Beer.name, abv: Faker::Beer.alcohol, ibu: Faker::Beer.ibu, style: Faker::Beer.style,
               photo: "https://images.unsplash.com/photo-1600788886242-5c96aabe3757?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
               country: Faker::Address.country, hops: Faker::Beer.hop)
end

puts "Destroying all users"
User.destroy_all

puts "Creating 2 users"
User.create!(email: "test101@gmail.com", nickname: "Shika", password: "123456")
User.create!(email: "test202@gmail.com", nickname: "Sorbet", password: "123456")

puts "Creating 1 bar"
Bar.destroy_all
Bar.create!(address: "37 rue des peupliers", name: "La touRchette")

puts "I'm done"
