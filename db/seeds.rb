# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

puts 'creating users'
 laura = User.create(email: 'laura@gmail.com', password: '123456')
 ricky = User.create(email: 'ricky@gmail.com', password: '123456')
 peter = User.create(email: 'peter@gmail.com', password: '123456')
puts 'users created'

borabora = Island.create!(user: laura, name: 'Bora Bora', description: 'It is so romantic', price: 10000000, type_of_event: "Wedding party", capacity: 35)
insel = Island.create!(user: laura, name: 'Insel Lindweder', description: "We've got the best sound-system for your Techno parties", price: 5000, type_of_event: "Techno party", capacity: 100)
goa = Island.create!(user: laura, name: 'Chorao', description: 'Goa parties, get colorful, get psyched!', price: 5000000, type_of_event: "Goa party", capacity: 200)
sanmiguel = Island.create!(user: laura, name: 'San Miguel', description: 'Party in the nature, no one will bother you', price: 10000000, type_of_event: "Birthday party", capacity: 50)
krong = Island.create!(user: ricky, name: 'Koh Rong', description: 'Dance your feet off under the moon', price: 8000000, type_of_event: "Full moon party", capacity: 300)
isla = Island.create!(user: ricky, name: 'Isla Providencia', description: 'Come for an unforgettable stag night with your best bros', price: 50000000, type_of_event: "Stag party", capacity: 50)
yap = Island.create!(user: ricky, name: 'Yap Island', description: 'Rave in paradise!', price: 1000000000, type_of_event: "Techno party", capacity: 500)
azura = Island.create!(user: ricky, name: 'Azura', description: 'say YES in heaven', price: 1000000000, type_of_event: "Wedding party", capacity: 200)
corvo = Island.create!(user: peter, name: 'Corvo Island', description: 'Psytrance and a vulcano? Say no more!', price: 800000, type_of_event: "Goa party", capacity: 100)
fula = Island.create!(user: peter, name: 'Fula Island', description: 'Party like a Viking', price: 8000000, type_of_event: "Stag party", capacity: 40)
mindoro = Island.create!(user: peter, name: 'Mindoro', description: 'All the single ladies welcome!', price: 90000000, type_of_event: "Bachelorette party", capacity: 65)

