FactoryBot.define do
  factory :nofication do
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
  end

  factory :trip do
    sequence(:name) {"Spain" }
    sequence(:start_date) { "10/31/19" }
    sequence(:end_date) {"10/31/19)" }
  end
end
