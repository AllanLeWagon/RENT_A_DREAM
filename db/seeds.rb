# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Article.destroy_all
User.destroy_all

u1 = User.create!(email: 'a@example.com', password: 'azerty')
u2 = User.create!(email: 'b@example.com', password: 'azerty')
u3 = User.create!(email: 'c@example.com', password: 'azerty')

Article.create!({
    owner: u1,
    name: 'satellite 1',
    price: 22,
    description: "ma petite description",
    image_url: 'https://www.economie.gouv.fr/files/files/directions_services/patrimoine/satellite.png',
    service_type: 'transport'
})


Article.create!({
  owner: u2,
  name: 'satellite 2',
  price: 22,
  description: "ma petite description",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/1/18/AEHF_1.jpg',
  service_type: 'transport'
})
