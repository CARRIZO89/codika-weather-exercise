puts "Creating an User..."
User.create(email: 'test_user@example.com', password: 'partnership', password_confirmation: 'partnership')
puts "Creating cities..."
15.times do
  City.create(
    name: Faker::LordOfTheRings.location,
    weather: Faker::Lorem.word
  )
  print "."
end
puts "\n Done"