# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Island.destroy_all
User.destroy_all

ricky = User.create(email: 'laura@gmail.com', password: '123456')

puts 'islands and users created'
puts 'creating island and user'
Island.create(name: "Franky", description: "Lorem ipsum", price: 9, type_of_event: "Techno", capacity: 90, user: ricky)
