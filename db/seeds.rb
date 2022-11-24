# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'cleaning db'
Session.destroy_all
Offer.destroy_all
User.destroy_all
puts 'creating users'
User.create!(email: 'alex@mail.com', password: 'azerty', username: 'Alex', bio: 'Coach de foot', experience: 3);
User.create!(email: 'farnci@mail.com', password: 'azerty', username: 'Franci', bio: 'Coach de running', experience: 5);
User.create!(email: 'sophie@mail.com', password: 'azerty', username: 'Sophie', bio: 'Coache d"escalade', experience: 5);
User.create!(email: 'vannesa@mail.com', password: 'azerty', username: 'Vannesa');

User.all.each do  |user|
  Offer.create!(name: 'Escalade pour les debutants', sport: 'Escalade', price: 25, user: user, niveau:5)
  Offer.create!(name: 'Escalade pour les experimentes', sport: 'Escalade', price: 55, user: user, niveau:3)
  Offer.create!(name: 'Running pour les debutants', sport: 'Running', price: 25, user: user, niveau:2)
  Offer.create!(name: 'Tennis pour les debutants', sport: 'Tennis', price: 35, user: user, niveau:1)
end
puts 'all id good !'
