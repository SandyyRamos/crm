# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Eliminando Usuarios"

User.destroy_all

puts "Creando Usuarios"

User.create!( email: "admin@gmail.com", password: "291ABASD932")
User.create!( email: "usuario1@gmail.com", password: "91ABASD934")
User.create!( email: "usuario2@gmail.com", password: "281ABASD93")

puts "Usuarios creados satisfactoriamente"
