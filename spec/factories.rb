FactoryBot.define do
  factory :embassy do
    
  end

  factory :poi do
    
  end

  factory :attraction do
    
  end

  factory :event do
    
  end

  factory :currency_information do
    
  end


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
    sequence(:city) { |n| "destination-#{n}" }
    sequence(:country) { |n| "destination-#{n}" }
    leg
  end
end
