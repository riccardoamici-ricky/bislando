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

file1 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605713826/7x0647d4tg9zr040k0hjg2u20j5o.jpg')
file2 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783193/wedding_bora_yqroxg.jpg')
borabora = Island.create!(user: laura, name: 'Bora Bora', description: 'It is so romantic', price: 10000000, type_of_event: "Wedding party", capacity: 35, address: "Bora Bora, French Polynesia, Oceania")
borabora.photos.attach([{io: file1, filename: 'borabora.jpg', content_type: 'image/jpg'}, {io: file2, filename: 'boraborawedding.jpg', content_type: 'image/jpg'}])
#borabora.photos.attach(io: file, filename: 'boraborawedding.jpg', content_type: 'image/jpg')
file3 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/insel_fspjnj.jpg')
file4 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/insel_party_m3khbk.jpg')
insel = Island.create!(user: laura, name: 'Insel Lindweder', description: "We've got the best sound-system for your Techno parties", price: 5000, type_of_event: "Techno party", capacity: 100, address: "Berlin, Germany, Europe")
insel.photos.attach([{io: file3, filename: 'insel.jpg', content_type: 'image/jpg'}, {io: file4, filename: 'inselparty.jpg', content_type: 'image/jpg'}])
file5 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/chorao_qbcejz.jpg')
file6 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/chorao_party_ellhqz.jpg')
goa = Island.create!(user: laura, name: 'Chorao', description: 'Goa parties, get colorful, get psyched!', price: 5000000, type_of_event: "Goa party", capacity: 200, address: "Chorao, India, Asia")
goa.photos.attach([{io: file5, filename: 'goa.jpg', content_type: 'image/jpg'}, {io: file6, filename: 'goaparty.jpg', content_type: 'image/jpg'}])
file7 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605634414/nf4hnt5oxb6dgdmtghemwvgvbx9e.jpg')
file8 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783194/smiguel_vt7stj.jpg')
file9 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/bdaysmiguel_uobpot.jpg')
sanmiguel = Island.create!(user: laura, name: 'San Miguel', description: 'Party in the nature, no one will bother you', price: 10000000, type_of_event: "Birthday party", capacity: 50, address: "San Miguel, Azores, Portugal, Europe")
sanmiguel.photos.attach([{io: file7, filename: 'sm.jpg', content_type: 'image/jpg'}, {io: file8, filename: 'sm2.jpg', content_type: 'image/jpg'}, {io: file9, filename: 'migparty.jpg', content_type: 'image/jpg'}])
file10 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/krong_u1rhlz.jpg')
file11 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/krong_party_dns3sf.jpg')
krong = Island.create!(user: ricky, name: 'Koh Rong', description: 'Dance your feet off under the moon', price: 8000000, type_of_event: "Full moon party", capacity: 300, address: "Koh Rong, Cambodia, Asia")
krong.photos.attach([{io: file10, filename: 'koh.jpg', content_type: 'image/jpg'}, {io: file11, filename: 'kohparty.jpg', content_type: 'image/jpg'}])
file12 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605716712/s5ndajje1xdnfsy2kt9laisx1j3o.jpg')
file13 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/providencia_phqk7j.jpg')
file14 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/stagprovidencia_k5fhmd.jpg')
isla = Island.create!(user: ricky, name: 'Isla Providencia', description: 'Come for an unforgettable stag night with your best bros', price: 50000000, type_of_event: "Stag party", capacity: 50, address: "Isla de la Providencia, Colombia, South America")
isla.photos.attach([{io: file12, filename: 'isla.jpg', content_type: 'image/jpg'}, {io: file13, filename: 'isla2.jpg', content_type: 'image/jpg'}, {io: file14, filename: 'isla3.jpg', content_type: 'image/jpg'}])
file15 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/yap_ozqcs2.jpg')
file16 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/yaprave_oxahxo.jpg')
yap = Island.create!(user: ricky, name: 'Yap Island', description: 'Rave in paradise!', price: 1000000000, type_of_event: "Techno party", capacity: 500, address: "Yap, Micronesia, Oceania")
yap.photos.attach([{io: file15, filename: 'yap.jpg', content_type: 'image/jpg'}, {io: file16, filename: 'yapparty.jpg', content_type: 'image/jpg'}])
file17 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/azura_gzvdd8.jpg')
file18 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/wedding_azura_mfnaog.jpg')
azura = Island.create!(user: ricky, name: 'Azura', description: 'say YES in heaven', price: 1000000000, type_of_event: "Wedding party", capacity: 200, address: "Ilha de Benguerra, Mozambique, Africa")
azura.photos.attach([{io: file17, filename: 'azura.jpg', content_type: 'image/jpg'}, {io: file18, filename: 'azuraparty.jpg', content_type: 'image/jpg'}])
file19 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/corvo_hcfiwi.jpg')
file20 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/psycorvo_r52ubv.jpg')
corvo = Island.create!(user: peter, name: 'Corvo Island', description: 'Psytrance and a vulcano? Say no more!', price: 800000, type_of_event: "Goa party", capacity: 100, address: "Corvo, Azores, Portugal, Europe")
corvo.photos.attach([{io: file19, filename: 'corvo.jpg', content_type: 'image/jpg'}, {io: file20, filename: 'corvoparty.jpg', content_type: 'image/jpg'}])
file21 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/fula_u9pvkv.jpg')
file22 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/stagfula_pihiy1.jpg')
fula = Island.create!(user: peter, name: 'Foula Island', description: 'Party like a Viking', price: 8000000, type_of_event: "Stag party", capacity: 40, address: "Foula, Scotland, United Kingdom, Europe")
fula.photos.attach([{io: file21, filename: 'fula.jpg', content_type: 'image/jpg'}, {io: file22, filename: 'fulaparty.jpg', content_type: 'image/jpg'}])
file23 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/mindoro_m1ujuj.jpg')
file24 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/mindoro_parrty_ngxlea.jpg')
mindoro = Island.create!(user: peter, name: 'Mindoro', description: 'All the single ladies welcome!', price: 90000000, type_of_event: "Bachelorette party", capacity: 65, address: "Mindoro, Philippines, Asia")
mindoro.photos.attach([{io: file23, filename: 'mindoro.jpg', content_type: 'image/jpg'}, {io: file24, filename: 'minparty.jpg', content_type: 'image/jpg'}])
