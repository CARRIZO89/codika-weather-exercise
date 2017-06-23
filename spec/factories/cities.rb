FactoryGirl.define do
  factory :city do
    name Faker::LordOfTheRings.location
    weather Faker::Lorem.word
  end
end
