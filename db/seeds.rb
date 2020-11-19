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


file1 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605821983/vgif1pgt0lq23v0ivgf1g5z0cq0b_e08zbo.jpg')
file2 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605822616/pexels-zukiman-mohamad-21787_a90jhu.jpg')
filea = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605822904/pexels-asad-photo-maldives-1024975_k5ndfq.jpg')
fileb = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605822899/pexels-asad-photo-maldives-1024960_qbvupr.jpg')
borabora = Island.create!(user: laura, name: 'Bora Bora', description: 'It is so romantic... Come and fall in love forever, if not with someone, with this beautiful island. A welcome cocktail is included in the price.', price: 10000000, type_of_event: "Wedding party", capacity: 35, address: "Bora Bora, French Polynesia, Oceania")
borabora.photos.attach([{io: file1, filename: 'borabora1.jpg', content_type: 'image/jpg'}, {io: file2, filename: 'borabora2.jpg', content_type: 'image/jpg'}, {io: filea, filename: 'borabora3.jpg', content_type: 'image/jpg'}, {io: fileb, filename: 'borabora4.jpg', content_type: 'image/jpg'}])
#borabora.photos.attach(io: file, filename: 'boraborawedding.jpg', content_type: 'image/jpg')
file3 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/insel_fspjnj.jpg')
file4 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605823185/pexels-niklas-jeromin-5005900_vodqgx.jpg')
filec = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605823189/pexels-wendy-wei-1190298_twaoxu.jpg')
filed = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605823194/pexels-sebastian-ervi-1763075_punp0t.jpg')
insel = Island.create!(user: laura, name: 'Insel Lindweder', description: "We've got the best sound-system for your Techno parties! But our island is no-frills, bring your camping gear and don't forget to stay hydrated.", price: 5000, type_of_event: "Techno party", capacity: 100, address: "Berlin, Germany, Europe")
insel.photos.attach([{io: file3, filename: 'insel.jpg', content_type: 'image/jpg'}, {io: file4, filename: 'inselparty.jpg', content_type: 'image/jpg'}, {io: filec, filename: 'insel.jpg', content_type: 'image/jpg'}, {io: filed, filename: 'inselparty.jpg', content_type: 'image/jpg'}])

file5 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605823537/pexels-fabian-wiktor-994605_ie9xuq.jpg')
file6 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605823537/pexels-fabian-wiktor-994605_ie9xuq.jpg')
filee = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605823544/pexels-marcin-dampc-1684187_x3nbzb.jpg')
filef = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605823550/pexels-wendy-wei-1537638_qolxh0.jpg')
goa = Island.create!(user: laura, name: 'Chorao', description: 'Goa parties, get colorful, get psyched! For you and your friends the possibility to wear the colors of the rainbow and dance from dawn till dusk. A welcome bowl of rice is included.', price: 50000, type_of_event: "Goa party", capacity: 200, address: "Chorao, India, Asia")
goa.photos.attach([{io: file5, filename: 'goa.jpg', content_type: 'image/jpg'}, {io: file6, filename: 'goaparty.jpg', content_type: 'image/jpg'}, {io: filee, filename: 'goaparty3.jpg', content_type: 'image/jpg'}, {io: filef, filename: 'goaparty4.jpg', content_type: 'image/jpg'}])

file7 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605824256/pexels-svetlana-shemetiuk-121087_jymjir.jpg')
file8 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605824248/pexels-tom-swinnen-2347450_c7jr1c.jpg')
file9 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605824258/pexels-jill-wellington-40815_mtgcwn.jpg')
fileg = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605824262/pexels-luca-nardone-3651615_hk9q9f.jpg')
sanmiguel = Island.create!(user: laura, name: 'San Miguel', description: 'Party in the nature, no one will bother you. Be crazy, be funny, be yourself. We offer you a bacalhau for your birthday!', price: 10000000, type_of_event: "Birthday party", capacity: 50, address: "San Miguel, Azores, Portugal, Europe")
sanmiguel.photos.attach([{io: file7, filename: 'sm.jpg', content_type: 'image/jpg'}, {io: file8, filename: 'sm2.jpg', content_type: 'image/jpg'}, {io: file9, filename: 'sms.jpg', content_type: 'image/jpg'}, {io: fileg, filename: 'migpartys.jpg', content_type: 'image/jpg'}])

file10 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605824615/pexels-elina-sazonova-4206593_qowkkx.jpg')
file11 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605824621/pexels-allphoto-bangkok-4614028_jtxbmw.jpg')
fileh = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605824622/pexels-bayu-jefri-1387037_pvkjcr.jpg')
filei = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605824624/pexels-cottonbro-4430307_govdu8.jpg')
krong = Island.create!(user: ricky, name: 'Koh Rong', description: 'Dance your feet off under the moon. It happens once a month so be sure to reserve during full-moon, we do not guarantee sky visibility.', price: 800000, type_of_event: "Full moon party", capacity: 300, address: "Koh Rong, Cambodia, Asia")
krong.photos.attach([{io: file10, filename: 'koh.jpg', content_type: 'image/jpg'}, {io: file11, filename: 'kohparty1.jpg', content_type: 'image/jpg'}, {io: fileh, filename: 'koh2.jpg', content_type: 'image/jpg'}, {io: filei, filename: 'koh.jpg', content_type: 'image/jpg'}])

file12 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605825652/pexels-taryn-elliott-5859211_1_ucyd2a.jpg')
file13 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605825659/pexels-pok-rie-1726310_l7hhwe.jpg')
file14 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605825662/pexels-alex-azabache-3250362_dkcxlz.jpg')
filej = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605825664/pexels-belle-co-1000445_p5pbab.jpg')
isla = Island.create!(user: ricky, name: 'Isla Providencia', description: 'Come for an unforgettable stag night with your best bros. Drinks not included, but we have a bar which you can use for yourself!', price: 50000000, type_of_event: "Stag party", capacity: 50, address: "Isla de la Providencia, Colombia, South America")
isla.photos.attach([{io: file12, filename: 'is.jpg', content_type: 'image/jpg'}, {io: file13, filename: 'ki.jpg', content_type: 'image/jpg'}, {io: file14, filename: 'ke2.jpg', content_type: 'image/jpg'}, {io: filej, filename: 'ku.jpg', content_type: 'image/jpg'}])


# file15 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/yap_ozqcs2.jpg')
# file16 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/yaprave_oxahxo.jpg')
# yap = Island.create!(user: ricky, name: 'Yap Island', description: 'Rave in paradise!', price: 1000000000, type_of_event: "Techno party", capacity: 500, address: "Yap, Micronesia, Oceania")
# yap.photos.attach([{io: file15, filename: 'yap.jpg', content_type: 'image/jpg'}, {io: file16, filename: 'yapparty.jpg', content_type: 'image/jpg'}])

file17 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605825834/pexels-asad-photo-maldives-1450340_ctom9x.jpg')
file18 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605825837/pexels-melanie-wupperman-662994_hh0jdc.jpg')
filek = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605825932/pexels-asad-photo-maldives-1268855_r47rp2.jpg')
filel = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605825839/pexels-asad-photo-maldives-1024975_1_ocdpma.jpg')
azura = Island.create!(user: ricky, name: 'Azura', description: 'say YES in heaven! And if you say NO, you can still chill on our awesome beach. Wedding minister not included.', price: 1000000000, type_of_event: "Wedding party", capacity: 200, address: "Ilha de Benguerra, Mozambique, Africa")
azura.photos.attach([{io: file17, filename: 'as.jpg', content_type: 'image/jpg'}, {io: file18, filename: 'ai.jpg', content_type: 'image/jpg'}, {io: filek, filename: 'k02.jpg', content_type: 'image/jpg'}, {io: filel, filename: 'kku.jpg', content_type: 'image/jpg'}])

# file19 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783191/corvo_hcfiwi.jpg')
# file20 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/psycorvo_r52ubv.jpg')
# corvo = Island.create!(user: peter, name: 'Corvo Island', description: 'Psytrance and a vulcano? Say no more!', price: 800000, type_of_event: "Goa party", capacity: 100, address: "Corvo, Azores, Portugal, Europe")
# corvo.photos.attach([{io: file19, filename: 'corvo.jpg', content_type: 'image/jpg'}, {io: file20, filename: 'corvoparty.jpg', content_type: 'image/jpg'}])

# file23 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/mindoro_m1ujuj.jpg')
# file24 = URI.open('https://res.cloudinary.com/dsij1zq1l/image/upload/v1605783192/mindoro_parrty_ngxlea.jpg')
# mindoro = Island.create!(user: peter, name: 'Mindoro', description: 'All the single ladies welcome!', price: 90000000, type_of_event: "Bachelorette party", capacity: 65, address: "Mindoro, Philippines, Asia")
# mindoro.photos.attach([{io: file23, filename: 'mindoro.jpg', content_type: 'image/jpg'}, {io: file24, filename: 'minparty.jpg', content_type: 'image/jpg'}])
