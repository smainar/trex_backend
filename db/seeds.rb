require 'faker'

3.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

3.times do
  Trip.create(
    name: Faker::Address.country,
    start_date: Faker::Date.backward,
    end_date: Faker::Date.forward,
    user_id: 1
  )
end

4.times do
  Leg.create(
    name: Faker::Address.country,
    start_date: Faker::Date.backward,
    end_date: Faker::Date.forward,
    trip_id: 1
  )
end

3.times do
  Destination.create(
    name: Faker::Address.city,
    leg_id: 1
  )
end

3.times do
  Leg.create(
    name: Faker::Address.country,
    start_date: Faker::Date.backward,
    end_date: Faker::Date.forward,
    trip_id: 2
  )
end

2.times do
  Leg.create(
    name: Faker::Address.country,
    start_date: Faker::Date.backward,
    end_date: Faker::Date.forward,
    trip_id: 3
  )
end

3.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward,
    departure_date: Faker::Date.forward,
    city: Faker::Address.city,
    destination_id: 1
  )
end
