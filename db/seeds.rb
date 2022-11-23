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

a1 = Article.new({
  owner: u1,
  name: 'satellite 1',
  price: 22,
  description: "elon musk",
  service_type: 'experience'
})

a1.image.attach(io: File.open('images_seed/satellite.png'), filename: 'satellite.png')

a1.save!

a2 = Article.new({
  owner: u2,
  name: 'Visit the ISS',
  price: 20000000,
  description: "spacial station of the big beau gosse",
  service_type: 'transport'
})

a2.image.attach(io: File.open('images_seed/ISS.jpeg'), filename: 'ISS.jpeg')

a2.save!

a3 = Article.new({
  owner: u3,
  name: 'The Best Yatch',
  price: 1000000,
  description: "javoue c'est incr",
  service_type: 'travel'
})

a3.image.attach(io: File.open('images_seed/Yatchofcharle.webp'), filename: 'Yatchofcharle.webp')

a3.save!

a4 = Article.new({
  owner: u4,
  name: 'guard bird',
  price: 667,
  description: "fait plus de 6mètres et détuit allan",
  service_type: 'experience'
})

a4.image.attach(io: File.open('images_seed/oiseau terreur.jpeg'), filename: 'oiseau terreur.jpeg')

a4.save!
