puts "Creating an User..."
User.create(email: 'test_user@example.com', password: 'asd123asd', password_confirmation: 'asd123asd')
puts "Creating cities..."
15.times do
  City.create(
    name: Faker::LordOfTheRings.location,
    weather: Faker::Lorem.word
  )
  print "."
end
puts "\n Done"