FactoryGirl.define do
  factory :user do
    email 'test_user@example.com'
    password 'asd123asd'
    password_confirmation 'asd123asd'
  end
end
