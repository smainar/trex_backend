FactoryBot.define do
  factory :trip do
    sequence(:name) {"Spain" }
    sequence(:start_date) { "10/31/19" }
    sequence(:end_date) {"10/31/19)" }
  end
end
