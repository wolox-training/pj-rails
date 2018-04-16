FactoryBot.define do
  factory :bookSuggestion do
    editorial { Faker::Educator.university }
    price     { Faker::Number.number(3) }
    author    { Faker::Name.name }
    title     { Faker::Lovecraft.tome }
    link      { Faker::Internet.url }
    publisher { Faker::Book.publisher }
    year      { Faker::Date.backward(14) }
    user
  end
end
