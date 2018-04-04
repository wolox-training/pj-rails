<<<<<<< HEAD
require 'faker'

FactoryBot.define do
  factory :book do
    genre      Faker::Educator.course
    year       Faker::Date.backward(14)
    author     Faker::Name.name
    image      Faker::String.random(8)
    title      Faker::Lovecraft.tome
    publisher  Faker::Educator.university
=======
FactoryBot.define do
  factory :book do
    genre 'genre'
    year       'year'
    author     'author'
    image      'image'
    title      'title'
    publisher  'publisher'
>>>>>>> 7ff53b0... Book model tests
  end
end
