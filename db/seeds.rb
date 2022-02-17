# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chez_roger = { name: 'Chez Roger', address: 'rue Roger', phone_number: '0123456789', category: '🇫🇷 French' }
chez_chang =  { name: 'Chez Chang', address: 'rue Chang', phone_number: '0123456789', category: '🇨🇳 Chinese' }
chez_luigi = { name: 'Chez Luigi', address: 'rue Luigi', phone_number: '0123456789', category: '🇮🇹 Italian' }
chez_kimono = { name: 'Chez Kimono', address: 'rue Kimono', phone_number: '0123456789', category: '🇯🇵 Japanese' }
chez_leon = { name: 'Chez Leon', address: 'rue Leon', phone_number: '0123456789', category: '🇧🇪 Belgian' }

[ chez_roger, chez_chang, chez_luigi, chez_kimono, chez_leon ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
