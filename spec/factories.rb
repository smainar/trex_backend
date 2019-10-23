FactoryBot.define do
  factory :notification do
    active { false }
    user { nil }
  end

  factory :transportation do
    mode { 1 }
    departure_time { "MyString" }
    arrival_time { "MyString" }
    departure_city { "MyString" }
    arrival_city { "MyString" }
    leg { nil }
  end

  factory :lodging do
    name { "MyString" }
    arrival_date { "MyString" }
    departure_date { "MyString" }
    city { "MyString" }
    destination { nil }

   

  factory :user do
    # Use sequence to make sure that the value is unique
    sequence(:email) { |n| "user-#{n}@example.com" }
    sequence(:name) { |n| "user-#{n}" }
  end

  factory :trip do
    sequence(:name) { |n| "trip-#{n}" }
    sequence(:start_date) { |n| "11/10/19" }
    sequence(:end_date) { |n| "12/10/19" }
    user
  end

  factory :leg do
    sequence(:name) { |n| "leg-#{n}" }
    sequence(:start_date) { |n| "11/10/19" }
    sequence(:end_date) { |n| "12/10/19" }
    trip
  end

  factory :destination do
    sequence(:name) { |n| "destination-#{n}" }
    leg
  end
end
