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

user1 = User.create!(username: "zairacosman", email: "zairacosman@hotmail.fr", password: "lewagon20012023", last_name: "Cosman", name: "Zaira")

puts "CREATED USERS"

# atelier1 = Atelier.create!(name: "Ateliernumero1", category: "Peinture", location: "Paris", price: 300, user: user1)

# atelier2 = Atelier.create!(name: "Ateliernumero2", category: "Peinture", location: "Paris", price: 119, user: user2)

# atelier3 = Atelier.create!(name: "Ateliernumero3", category: "Sculpture", location: "LYON", price: 150, user: user3)

# atelier4 = Atelier.create!(name: "Ateliernumero4", category: "Joaillerie", location: "LILLE", price: 220, user: user4)
# puts "CREATED ATELIERS"

# puts 'Liste ateliers'
# atelier_d_argent = Atelier.new(name: "Atelier d'Argent", location: "Paris", price: 300, category: "joaillerie")
# atelier_d_argent.save!
