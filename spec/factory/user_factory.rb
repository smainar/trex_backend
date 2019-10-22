FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "Spain" }
    sequence(:email) { |n| "Spain" }
    sequence(:password) { |n| "Spain" }
    sequence(:user_id) { 1 }
  end
end
