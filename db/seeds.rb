# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.destroy_all
User.destroy_all

u1 = User.create!(email: 'Allan@example.com', password: 'azerty', first_name: "Allan", last_name: "Gneau")
u2 = User.create!(email: 'Cgros@example.com', password: 'azerty', first_name: "Charles", last_name: "Henri IV")
u3 = User.create!(email: 'Jojo@example.com', password: 'azerty', first_name: "Jojo", last_name: "Bizarre-adventure")
u4 = User.create!(email: 'Ines@example.com', password: 'azerty', first_name: "Ines", last_name: "Ta")

Article.create!({
  owner: u1,
  name: 'satellite 1',
  price: 22,
  description: "elon musk",
  image_url: 'https://www.economie.gouv.fr/files/files/directions_services/patrimoine/satellite.png',
  service_type: 'experience'
})

Article.create!({
  owner: u2,
  name: 'submarine',
  price: 20,
  description: "tu pues du cul",
  image_url: 'https://i.dailymail.co.uk/i/pix/2015/04/09/10/2760F4AF00000578-3030728-image-m-19_1428571334565.jpg',
  service_type: 'transport'
})

Article.create!({
  owner: u3,
  name: 'armed cheetah',
  price: 23,
  description: "javoue c'est incr",
  image_url: 'https://files.slack.com/files-pri/T02NE0241-F04BP6TASH4/dall__e_2022-11-21_17.25.15_-_guepard_head.png',
  service_type: ''
})

Article.create!({
  owner: u4,
  name: 'private island',
  price: 21,
  description: "pas ouf",
  image_url: 'https://cdn.vox-cdn.com/thumbor/njcu1bVIk81B5VqzQxLpUbwJq8o=/0x0:3992x2992/1200x800/filters:focal(1677x1177:2315x1815)/cdn.vox-cdn.com/uploads/chorus_image/image/66099011/exclusive_private_island_custom_1.0.jpg',
  service_type: 'experience'
})
