# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Reservation.destroy_all
Atelier.delete_all
User.delete_all
puts "CLEANED DATABASE"

user1 = User.create!(username: "zairacosman", email: "zairacosman@hotmail.fr", password: "lewagon20012023")
user2 = User.create!(username: "artisteouf", email: "artisteouf@hotmail.fr", password: "paris11top")
user3 = User.create!(username: "xavierdupont", email: "xavier.dupont@yahoo.fr", password: "corsicagood")
user4 = User.create!(username: "charlesdonatelo", email: "donatelo@yahoo.fr", password: "charlesdon")
user5 = User.create!(username:"macarena", email:"macarena1206@yahoo.fr", password:"brazilia12")
user6 = User.create!(username:"soprano12", email:"courdechant@hotmail.com", password:"beethoven12")
user8 = User.create!(username:"peinturedeparis", email:"peintureparis@hotmail.fr", password:"123456")
user9 = User.create!(username:"mozart", email:"mozart@hotmail.fr", password:"123456")
user10 = User.create!(username:"beethoven", email:"beethoven@hotmail.fr", password:"123456")
puts "CREATED USERS"

atelier1 = Atelier.create!(name: "Ateliernumero1", category: "peinture", location: "Paris", price: 300, user: user1)

atelier2 = Atelier.create!(name: "Ateliernumero2", category: "peinture", location: "Paris", price: 119, user: user2)

atelier3 = Atelier.create!(name: "Ateliernumero3", category: "sculpture", location: "LYON", price: 150, user: user3)

atelier4 = Atelier.create!(name: "Ateliernumero4", category: "joaillerie", location: "LILLE", price: 220, user: user4)
puts "CREATED ATELIERS"

resa1 = Reservation.create!(atelier: atelier, user: user4, start_date: 23/11/2023, end_date: 25/11/2023)

# puts 'Liste ateliers'
# atelier_d_argent = Atelier.new(name: "Atelier d'Argent", location: "Paris", price: 300, category: "joaillerie")
# atelier_d_argent.save!
