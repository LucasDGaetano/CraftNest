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
require "open-uri"


Review.destroy_all
Reservation.destroy_all
Atelier.delete_all
User.delete_all
puts "CLEANED DATABASE"

user1 = User.create!(username: "ZairaCosman", email: "zairacosman@hotmail.fr", password: "lewagon20012023", last_name: "Cosman", name: "Zaira")
user2 = User.create!(username: "LucasDGaetano", email: "lucasdgaetano@hotmail.fr", password: "123456", last_name: "De Gaetano", name: "Lucas")
user3 = User.create!(username: "ValetinBailly", email: "valentinbailly@numericable.fr", password: "123456", last_name: "Bailly", name: "Valentin")
user4 = User.create!(username: "PierreGuitard", email: "pierre.guitard@gmail.com", password: "123456", last_name: "Guitard", name: "Pierre")
user5 = User.create!(username: "LucileDevilla", email: "lucile.vilela@gmail.com", password: "123456", last_name: "Vilela", name: "Lucile")
user6 = User.create!(username: "AlixCapely", email: "alix.capely@gmail.com", password: "123456", last_name: "Capely", name: "Alix")
user7 = User.create!(username: "EdwardClary", email: "edward.clary@gmail.com", password: "123456", last_name: "Clary", name: "Edward")
user8 = User.create!(username: "LauraPerson", email: "laura.person@gmail.com", password: "123456", last_name: "Person", name: "Laura")
user9 = User.create!(username: "AlexisDutoya", email: "alexis.dutoya@gmail.com", password: "123456", last_name: "Dutoya", name: "Alexis")
user10 = User.create!(username: "ArthurGumery", email: "arthur.gumery@gmail.com", password: "123456", last_name: "Gumery", name: "Arthur")

puts "CREATED USERS"

file1 = URI.open("https://www.pariszigzag.fr/wp-content/uploads/2019/03/atelier-suzanne-valandon-paris-zigag-e1551883982843.jpg")
atelier1 = Atelier.new(name: "Au plaisir du petit Paris", category: "Peinture", location: "Paris", price: 300, user: user1, surface: 10, description: "Un petit atelier plein de charme avec une kitchenette et une cour extérieur")
atelier1.photo.attach(io: file1, filename: "atelier.png", content_type: "image/png")
atelier1.save!

file2 = URI.open("https://resize-elle.ladmedia.fr/rcrop/638,,forcex/img/var/plain_site/storage/images/deco/art-decoration/ateliers-d-artistes-des-lieux-inspires/69480487-1-fre-FR/Ateliers-d-artistes-des-lieux-inspires.jpg")
atelier2 = Atelier.new(name: "Au coin du feu", category: "Sculpture", location: "Poitiers", price: 120, user: user2, surface: 20, description: "Un grand atelier charmant avec une cour extérieur")
atelier2.photo.attach(io: file2, filename: "atelier2.png", content_type: "image/png")
atelier2.save!

file3 = URI.open("https://www.tiaramilo.com/build/images/static_content/joaillerie/atelier-joaillerie-bague-flamme-soudure.jpg")
atelier3 = Atelier.new(name: "Le doux repos", category: "Joaillerie", location: "Lyon", price: 150, user: user3, surface: 15, description: "Un atelier comprenant tout le matériel necessaire au polissage de gemmes !")
atelier3.photo.attach(io: file3, filename: "atelier3.png", content_type: "image/png")
atelier3.save!

file4 = URI.open("https://atelierlapatente.org/wp/wp-content/uploads/2020/05/Panorama.jpg")
atelier4 = Atelier.new(name: "Premier mercredi", category: "Bois", location: "Lille", price: 220, user: user4, surface: 30, description: "Un grand atelier comprenant tout le materiel pour menuiserie, sculpture sur bois. Materiel de vernissage en option")
atelier4.photo.attach(io: file4, filename: "atelier4.png", content_type: "image/png")
atelier4.save!

file5 = URI.open("https://www.arielledegasquet.com/wp-content/uploads/2017/03/170913__Arielle-de-Gasquet-atelier-ceramique__DSF8623.jpg")
atelier5 = Atelier.new(name: "Le four", category: "Céramique", location: "Rennes", price: 400, user: user5, surface: 25, description: "Un petit atelier plein de charme avec une kitchenette et une cour extérieur, four a ceramique inclus")
atelier5.photo.attach(io: file5, filename: "atelier5.png", content_type: "image/png")
atelier5.save!

file6 = URI.open("https://photos.infolocale.fr/infoLocale/annonce/2022/0824/7648404/_1.jpg")
atelier6 = Atelier.new(name: "Tu m'as vu", category: "Peinture", location: "Angers", price: 100, user: user6, surface: 25, description: "Un petit atelier plein de charme avec une kitchenette. Les gouaches et toiles sont inclus mais pas les pinceaux !")
atelier6.photo.attach(io: file6, filename: "atelier6.png", content_type: "image/png")
atelier6.save!

file7 = URI.open("https://www.infrarouge.fr/wp-content/uploads/2017/10/Messika-immersion-joaillerie-Euge%CC%81nie-Martinez-011.jpg")
atelier7 = Atelier.new(name: "Chère enfant", category: "Joaillerie", location: "Compiègne", price: 500, user: user7, surface: 10, description: "Un petit atelier comprenant tout le matériel pour incrustation de pierres et gemmes")
atelier7.photo.attach(io: file7, filename: "atelier7.png", content_type: "image/png")
atelier7.save!

file8 = URI.open("https://www.apeidieppe.fr/msmedias/ateliers-etran/atelier-bois-solidaire/atelier-4.jpg")
atelier8 = Atelier.new(name: "A la joie de Bagnolet", category: "Bois", location: "Bagnolet", price: 600, user: user8, surface: 50, description: "Un très grand atelier avec jardin, pas de voisin, sentez vous libre de faire du bruit ! Tout équipement pour menuiserie et sculpture compris")
atelier8.photo.attach(io: file8, filename: "atelier8.png", content_type: "image/png")
atelier8.save!

file9 = URI.open("https://i2.wp.com/neo-ceramistes.com/wp-content/uploads/2020/02/atelier-ceramique-delft.jpg?fit=800%2C521&ssl=1")
atelier9 = Atelier.new(name: "A côté du marché", category: "Céramique", location: "Reims", price: 200, user: user9, surface: 12, description: "Un  atelier plein de charme avec une kitchenette et un four à ceramique")
atelier9.photo.attach(io: file9, filename: "atelier9.png", content_type: "image/png")
atelier9.save!

file10 = URI.open("https://images.squarespace-cdn.com/content/v1/61cca7fa29f52d677c682513/65fdd3af-bae9-4c1e-9c07-d6ecf0fe6a1a/La+Fabrique+du+Canal+Atelier+c%C3%A9ramique+cours+poterie+Paris+19")
atelier10 = Atelier.new(name: "La bonne chaleur", category: "Céramique", location: "Marseille", price: 340, user: user10, surface: 10, description: "Un petit atelier plein de charme avec une kitchenette et une cour extérieur")
atelier10.photo.attach(io: file10, filename: "atelier10.png", content_type: "image/png")
atelier10.save!

puts "CREATED ATELIERS"

reservation1 = Reservation.create!(atelier: atelier3, user: user1, start_date: "Wed, 23 Nov 2023", end_date: "Fri, 24 Nov 2023")
reservation2 = Reservation.create!(atelier: atelier3, user: user3, start_date: "Wed, 29 Nov 2023", end_date: "Sun, 3 Dec 2023")
reservation3 = Reservation.create!(atelier: atelier5, user: user4, start_date: "Fri, 1 Dec 2023", end_date: "Mon, 4 Dec 2023")
reservation4 = Reservation.create!(atelier: atelier7, user: user9, start_date: "Wed, 29 Nov 2023", end_date: "Thu, 7 Dec 2023")
reservation5 = Reservation.create!(atelier: atelier8, user: user10, start_date: "Tue, 28 Nov 2023", end_date: "Fri, 1 Dec 2023")
puts "CREATED RESERVATIONS"

review1 = Review.create!(user: user1, reservation: reservation1, rating: 5, content: "Incroyable mais vrai")
review2 = Review.create!(user: user3, reservation: reservation2, rating: 4, content: "Un must à aller voir")
review3 = Review.create!(user: user4, reservation: reservation3, rating: 3, content: "Coup ci coup ça. Je suis assez mitigé franchement")
review4 = Review.create!(user: user9, reservation: reservation4, rating: 1, content: "Extrêmement déçu. J'ai perdu de l'argent.")
review5 = Review.create!(user: user10, reservation: reservation5, rating: 5, content: "Incroyable et surtout vrai")

puts "CREATED REVIEWS"
