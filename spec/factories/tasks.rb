FactoryBot.define do
  factory :task do
    title { Faker::Lorem.words(number: 2) }
    due_date { Faker::Date.in_date_period }
    status { Faker::Number.within(range: 0..2) }
  end
end
