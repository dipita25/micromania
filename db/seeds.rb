# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Vidange de la BD en cours ..."
Booking.destroy_all
Game.destroy_all
User.destroy_all

puts "Création des users en cours ..."

user1 = {email: "jonathan@gmail.com", password: "password123"}
user2 = {email: "daren@gmail.com", password: "password456"}

user1 = User.create(user1)
user2 = User.create(user2)

puts "Finished! #{user1.email}"

puts "Création des Games en cours ..."
image_url = "https://res.cloudinary.com/dhyxhfi5d/image/upload/v1706925340/development/fifa.jpg"
game1 = {name: "Fifa", price: 5000, platform: "pc", user_id: user1.id}

game1 = Game.create(game1)
game1.photo.attach(io: URI.open(image_url), filename: "fifa.jpg")

puts "Finished! #{game1.name}"
