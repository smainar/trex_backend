FactoryBot.define do
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
