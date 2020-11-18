# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "open-uri"

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Island.destroy_all
User.destroy_all




puts 'creating users'
 laura = User.create(email: 'laura@gmail.com', password: '123456')
 ricky = User.create(email: 'ricky@gmail.com', password: '123456')
 peter = User.create(email: 'peter@gmail.com', password: '123456')
puts 'users created'

puts 'now creating islands'

file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
borabora = Island.create!(user: laura, name: 'Bora Bora', description: 'It is so romantic', price: 10000000, type_of_event: "Wedding party", capacity: 35)
borabora.photos.attach(io: file, filename: 'borabora.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605543915/sample.jpg')
insel = Island.create!(user: laura, name: 'Insel Lindweder', description: "We've got the best sound-system for your Techno parties", price: 5000, type_of_event: "Techno party", capacity: 100)
insel.photos.attach(io: file, filename: 'insel.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605634414/nf4hnt5oxb6dgdmtghemwvgvbx9e.jpg')
goa = Island.create!(user: laura, name: 'Chorao', description: 'Goa parties, get colorful, get psyched!', price: 5000000, type_of_event: "Goa party", capacity: 200)
goa.photos.attach(io: file, filename: 'goa.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713828/p73gdh2cnarr2g8yccoqc1398gd1.jpg')
sanmiguel = Island.create!(user: laura, name: 'San Miguel', description: 'Party in the nature, no one will bother you', price: 10000000, type_of_event: "Birthday party", capacity: 50)
sanmiguel.photos.attach(io: file, filename: 'sanmiguel.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
krong = Island.create!(user: ricky, name: 'Koh Rong', description: 'Dance your feet off under the moon', price: 8000000, type_of_event: "Full moon party", capacity: 300)
krong.photos.attach(io: file, filename: 'krong.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
isla = Island.create!(user: ricky, name: 'Isla Providencia', description: 'Come for an unforgettable stag night with your best bros', price: 50000000, type_of_event: "Stag party", capacity: 50)
isla.photos.attach(io: file, filename: 'isla.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
yap = Island.create!(user: ricky, name: 'Yap Island', description: 'Rave in paradise!', price: 1000000000, type_of_event: "Techno party", capacity: 500)
yap.photos.attach(io: file, filename: 'yap.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
azura = Island.create!(user: ricky, name: 'Azura', description: 'say YES in heaven', price: 1000000000, type_of_event: "Wedding party", capacity: 200)
azura.photos.attach(io: file, filename: 'azura.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
corvo = Island.create!(user: peter, name: 'Corvo Island', description: 'Psytrance and a vulcano? Say no more!', price: 800000, type_of_event: "Goa party", capacity: 100)
corvo.photos.attach(io: file, filename: 'corvo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
fula = Island.create!(user: peter, name: 'Fula Island', description: 'Party like a Viking', price: 8000000, type_of_event: "Stag party", capacity: 40)
fula.photos.attach(io: file, filename: 'fula.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
mindoro = Island.create!(user: peter, name: 'Mindoro', description: 'All the single ladies welcome!', price: 90000000, type_of_event: "Bachelorette party", capacity: 65)
mindoro.photos.attach(io: file, filename: 'mindoro.jpg', content_type: 'image/jpg')
