# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create user
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
game1 = {name: "call of Duty", price: 5000, platform: "pc", user_id: user1.id}
game1 = Game.create(game1)
puts "Finished! #{game1.name}"
game2 = {name: "Fifa 23", price: 2800, platform: "Xbox", user_id: user1.id}
game2 = Game.create(game2)
puts "Finished! #{game2.name}"
game3 = {name: "Bioshock", price: 900, platform: "PC", user_id: user1.id}
game3 = Game.create(game3)
puts "Finished! #{game3.name}"
game4 = {name: "GTA 4", price: 700, platform: "playstation", user_id: user1.id}
game4 = Game.create(game4)
puts "Finished! #{game4.name}"


puts "Création des bookings en cours..."
booking1 = {user_id: user1.id, game_id: game1.id, startDate: Date.new(2024, 1, 4), endDate: Date.new(2024, 1, 20)}
# puts "finished! #{booking1.user_id}"
booking1=Booking.create (booking1)
# booking1 = Booking.create(user: user1, game: game1, start_date: Date.new(2024, 1, 4), end_date: Date.new(2024, 1, 20))
# puts "Finished! User ID: #{booking1.user_id}, Game ID: #{booking1.game_id}"
# Booking
puts "finished! #{booking1.user_id}"

booking2 = {user_id: user2.id, game_id: game2.id, startDate: Date.new(2024, 1, 9), endDate: Date.new(2024, 1, 29) }
booking1=Booking.create (booking2)
puts "finished! #{booking1.user_id}"
