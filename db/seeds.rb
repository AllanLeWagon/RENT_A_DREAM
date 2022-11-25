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
u2 = User.create!(email: 'Cgros@example.com', password: 'azerty', first_name: "Charles", last_name: "Gros")
u3 = User.create!(email: 'Jojo@example.com', password: 'azerty', first_name: "Jojo", last_name: "Bizarre-adventure")
u4 = User.create!(email: 'Ines@example.com', password: 'azerty', first_name: "Ines", last_name: "Ta")

a1 = Article.new({
  owner: u1,
  name: 'Satellite',
  price: 22,
  description: "Get ready to rent your own Satellite! The opportunities are limitless. Want to communicate from remote locations smoothly and without being trackable? Rent space on someone else's satellite.",
  service_type: 'Experience'
})

a1.image.attach(io: File.open('images_seed/satellite.png'), filename: 'satellite.png')

a1.save!

a2 = Article.new({
  owner: u2,
  name: 'Visit the ISS',
  price: 20000000,
  description: "Visit the european station",
  service_type: 'Experience'
})

a2.image.attach(io: File.open('images_seed/ISS.jpeg'), filename: 'ISS.jpeg')

a2.save!

a3 = Article.new({
  owner: u3,
  name: 'The Best Yatch',
  price: 1000000,
  description: "Rent a Yatch for your holidays",
  service_type: 'Travel'
})

a3.image.attach(io: File.open('images_seed/Yatchofcharle.webp'), filename: 'Yatchofcharle.webp')

a3.save!

a4 = Article.new({
  owner: u4,
  name: 'The Guard Bird',
  price: 667,
  description: "fait plus de 6mètres et détruit allan",
  service_type: 'exotic'
})

a4.image.attach(io: File.open('images_seed/oiseau terreur.jpeg'), filename: 'oiseau terreur.jpeg')

a4.save!

a5 = Article.new({
  owner: u2,
  name: 'The Weeknd',
  price: 50,
  description: "Hire a Celebrity! Book a celebrity through us and enjoy one-to-one, bespoke celebrity interaction.",
  service_type: 'Event'
})

a5.image.attach(io: File.open('images_seed/the weekend.jpeg'), filename: 'the weekend.jpeg')

a5.save!

a6 = Article.new({
  owner: u3,
  name: 'The Gold House',
  price: 150,
  description: "Get your royal fix without the enormous crowds at these sensational châteaux scattered near the French capital. Experience a stay in a castle covered in gold that comprises 5 bedrooms, 6 bathrooms, a spa, inside pool and many more lux features.",
  service_type: 'Event'
})

a6.image.attach(io: File.open('images_seed/Gold Room.jpeg'), filename: 'Gold Room.jpeg')

a6.save!

a7 = Article.new({
  owner: u4,
  name: 'Run with your bear',
  price: 250,
  description: "Ride with a spécial bear",
  service_type: 'Experience'
})

a7.image.attach(io: File.open('images_seed/The poutine ride.jpeg'), filename: 'The poutine ride.jpeg')

a7.save!

a8 = Article.new({
  owner: u4,
  name: 'Private Island',
  price: 899,
  description: "Where could you find more privacy than on a private luxury island? Rent a Private Island to fulfill the most complete and ultimate experience. Reserve the entire island for events, special occasions or simply for your peace of mind! A privatized island offers guests complete privacy, luxury and security in some of the most spectacular locations around the world…",
  service_type: 'Experience'
})

a8.image.attach(io: File.open('images_seed/Private island.webp'), filename: 'Private island.webp')

a8.save!

a9 = Article.new({
  owner: u2,
  name: 'Submarine',
  price: 250,
  description: "Compact and luxurious private submarine especially designed to fit aboard superyachts. Submerse in water and discover the beauty of the undersea",
  service_type: 'Experience'
})

a9.image.attach(io: File.open('images_seed/GlassSubmarine.jpeg'), filename: 'GlassSubmarine.jpeg')

a9.save!

a10 = Article.new({
  owner: u2,
  name: 'Private Jet',
  price: 850,
  description: "Instantly book an entire private aircraft as well as seats on a private jet seamlessly. Our technology makes it possible to book to 2,400 destinations.",
  service_type: 'Experience'
})

a10.image.attach(io: File.open('images_seed/jet-prive.jpeg'), filename: 'jet-prive.jpeg')

a10.save!
