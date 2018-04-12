FactoryBot.define do
  factory :rent do
    user
    book
    from { Faker::Date.backward(14) }
    to   { Faker::Date.forward(14) }
  end
end
