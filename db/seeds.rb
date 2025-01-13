# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
book = Book.create(name: 'The Great Gatsby', price: 10.99)
30.times do
  book.sells << Sell.create(quantity: rand(2..10), day: Sell::DAYS[rand(0..(Sell::DAYS.length - 1))])
end
