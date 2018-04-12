FactoryBot.define do
  factory :user do
    first_name            { Faker::Name.first_name }
    last_name             { Faker::Name.last_name }
    email                 { Faker::Internet.email }
    password              { Faker::String.random(8) }
    password_confirmation { password.to_s }
  end
end
