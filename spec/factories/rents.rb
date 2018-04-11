FactoryBot.define do
  factory :rent do
<<<<<<< HEAD
    user  nil
    book  nil
    from  Faker::Date.backward(14)
    to    Faker::Date.forward(14)
=======
    user
    book 
    from { Faker::Date.backward(14) }
    to   { Faker::Date.forward(14) }
>>>>>>> 939f010833462647cddd94c5385e4bb77cd007c9
  end
end
