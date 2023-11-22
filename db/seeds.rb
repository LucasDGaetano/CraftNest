# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "date"

Review.destroy_all
Reservation.destroy_all
Atelier.delete_all
User.delete_all
puts "CLEANED DATABASE"

user1 = User.create!(username: "ZairaCosman", email: "zairacosman@hotmail.fr", password: "lewagon20012023", last_name: "Cosman", name: "Zaira")
user2 = User.create!(username: "LucasDGaetano", emmail: "lucasdgaetano@hotmail.fr", password: "123456", last_name: "De Gaetano", name: "Lucas")
user3 = User.create!(username: "ValetinBailly", email: "valentinbailly@numericable.fr", password: "123456", last_name: "Bailly", name: "Valentin")
user4 = User.create!(username: "PierreGuitard", email: "pierre.guitard@gmail.com", password: "123456", last_name: "Guitard", name: "Pierre")
user5 = User.create!(username: "LucileDevilla", email: "lucile.vilela@gmail.com", password: "123456", last_name: "Vilela", name: "Lucile")
user6 = User.create!(username: "AlixCapely", email: "alix.capely@gmail.com", password: "123456", last_name: "Capely", name: "Alix")
user7 = User.create!(username: "EdwardClary", email: "edward.clary@gmail.com", password: "123456", last_name: "Clary", name: "Edward")
user8 = User.create!(username: "LauraPerson", email: "laura.person@gmail.com", password: "123456", last_name: "Person", name: "Laura")
user9 = User.create!(username: "AlexisDutoya", email: "alexis.dutoya@gmail.com", password: "123456", last_name: "Dutoya", name: "Alexis")
user10 = User.create!(username: "ArthurGumery", email: "arthur.gumery@gmail.com", password: "123456", last_name: "Gumery", name: "Arthur")

puts "CREATED USERS"
atelier1 = Atelier.create!(name: "Au plaisir du petit Paris", category: "Peinture", location: "Paris", price: 300, user: user1)
atelier2 = Atelier.create!(name: "Au coin du feu", category: "Sculpture", location: "Poitiers", price: 120, user: user2)
atelier3 = Atelier.create!(name: "Le doux repos", category: "Joaillerie", location: "Lyon", price: 150, user: user3)
atelier4 = Atelier.create!(name: "Premier mercredi", category: "Bois", location: "Lille", price: 220, user: user4)
atelier5 = Atelier.create!(name: "Le four", category: "Céramique", location: "Rennes", price: 400, user: user5)
atelier6 = Atelier.create!(name: "Tu m'as vu", category: "Peinture", location: "Angers", price: 100, user: user6)
atelier7 = Atelier.create!(name: "Chère enfant", category: "Joaillerie", location: "Compiègne", price: 500, user: user7)
atelier8 = Atelier.create!(name: "A la joie de Bagnolet", category: "Bois", location: "Bagnolet", price: 600, user: user8)
atelier9 = Atelier.create!(name: "A côté du marché", category: "Céramique", location: "Reims", price: 200, user: user9)
atelier10 = Atelier.create!(name: "La bonne chaleur", category: "Céramique", location: "Marseille", price: 340, user: user10)
puts "CREATED ATELIERS"

reservation1 = Reservation.create!(atelier: atelier3, user: user1, start_date: 2023/11/27, end_date: 2023/11/28, atelier_id: 17, user_id: 1)
reservation2 = Reservation.create!(atelier: atelier3, user: user3, start_date: 2023/11/29, end_date: 2023/12/03, atelier_id: 19, user_id: 3)
reservation3 = Reservation.create!(atelier: atelier5, user: user4, start_date: 2023/12/01, end_date: 2023/12/04, atelier_id: 21, user_id: 4)
reservation4 = Reservation.create!(atelier: atelier7, user: user9, start_date: 2023/11/29, end_date: 2023/12/07, atelier_id: 39, user_id: 9)
reservation5 = Reservation.create!(atelier: atelier8, user: user10, start_date: 2023/11/28, end_date: 2023/12/01, atelier_id: 45, user_id: 10)
puts "CREATED RESERVATIONS"

review1 = Review.create!(user: user1, reservation: reservation1, rating: 5, content: "Incroyable mais vrai")
review2 = Review.create!(user: user3, reservation: reservation2, rating: 4, content: "Un must à aller voir")
review3 = Review.create!(user: user4, reservation: reservation3, rating: 3, content: "Coup ci coup ça")
review4 = Review.create!(user: user9, reservation: reservation4, rating: 1, content: "Extrêmement déçu")
review5 = Review.create!(user: user10, reservation: reservation5, rating: 5, content: "Incroyable et surtout vrai")

puts "CREATED REVIEWS"
