require 'faker'

FactoryBot.define do
  factory :book do
    genre      { Faker::Educator.course }
    year       { Faker::Date.backward(14) }
    author     { Faker::Name.name }
    image      { Faker::Internet.url }
    title      { Faker::Lovecraft.tome }
    publisher  { Faker::Educator.university }
  end
end
