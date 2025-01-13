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
book2 = Book.create(name: 'The lord of the rings', price: 25.00)
book3 = Book.create(name: 'Harry el sucio Potter', price: 12.99)

10.times do
  book.sells << Sell.create(quantity: rand(2..10), day: Sell::DAYS[rand(0..(Sell::DAYS.length - 1))])
end

10.times do
  book2.sells << Sell.create(quantity: rand(2..10), day: Sell::DAYS[rand(0..(Sell::DAYS.length - 1))])
end

10.times do
  book3.sells << Sell.create(quantity: rand(2..10), day: Sell::DAYS[rand(0..(Sell::DAYS.length - 1))])
end