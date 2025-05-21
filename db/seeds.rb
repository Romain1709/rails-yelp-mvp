# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating restaurants..."
Restaurant.destroy_all

restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "01 45 61 12 12", category: "french" },
  { name: "Sushi Shop", address: "75001 Paris", phone_number: "01 23 45 67 89", category: "japanese" },
  { name: "Pasta e Basta", address: "75010 Paris", phone_number: "01 98 76 54 32", category: "italian" },
  { name: "Dragon d'Or", address: "75013 Paris", phone_number: "01 55 44 33 22", category: "chinese" },
  { name: "Chez Léon", address: "75002 Paris", phone_number: "01 22 33 44 55", category: "belgian" }
]

restaurants.each { |attrs| Restaurant.create!(attrs) }

puts "Done!"
