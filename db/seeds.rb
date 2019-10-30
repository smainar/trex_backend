require 'faker'

6.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    role: 0,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  )
end

5.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    role: 1,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  )
end

Friendship.create(user_id: 1, friend_id: 2, emergency_contact: true, relationship: 'travel companion')
Friendship.create(user_id: 1, friend_id: 3, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 1, friend_id: 4, emergency_contact: false, relationship: 'follower')

Friendship.create(user_id: 2, friend_id: 1, emergency_contact: true, relationship: 'travel companion')
Friendship.create(user_id: 2, friend_id: 3, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 2, friend_id: 4, emergency_contact: false, relationship: 'follower')

Friendship.create(user_id: 3, friend_id: 1, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 3, friend_id: 2, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 3, friend_id: 4, emergency_contact: true, relationship: 'follower')

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
    start_date: Faker::Date.backward,
    end_date: Faker::Date.forward,
    start_location: Faker::Address.city,
    end_location: Faker::Address.city,
    trip_id: 1
  )
end

3.times do
  Destination.create(
    city: Faker::Address.city,
    country: Faker::Address.city,
    leg_id: 1
  )
end

3.times do
  Leg.create(
    start_date: Faker::Date.backward,
    end_date: Faker::Date.forward,
    start_location: Faker::Address.city,
    end_location: Faker::Address.city,
    trip_id: 2
  )
end

2.times do
  Leg.create(
    start_date: Faker::Date.backward,
    end_date: Faker::Date.forward,
    start_location: Faker::Address.city,
    end_location: Faker::Address.city,
    trip_id: 3
  )
end

2.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward,
    departure_date: Faker::Date.forward,
    city: Faker::Address.city,
    leg_id: 1
  )
end

2.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward,
    departure_date: Faker::Date.forward,
    city: Faker::Address.city,
    leg_id: 2
  )
end

1.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward,
    departure_date: Faker::Date.forward,
    city: Faker::Address.city,
    leg_id: 3
  )
end

1.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward,
    departure_date: Faker::Date.forward,
    city: Faker::Address.city,
    leg_id: 4
  )
end

1.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward,
    departure_date: Faker::Date.forward,
    city: Faker::Address.city,
    leg_id: 5
  )
end

1.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward,
    departure_date: Faker::Date.forward,
    city: Faker::Address.city,
    leg_id: 6
  )
end

3.times do
  Transportation.create(
    departure_time: Faker::Time.forward,
    arrival_time: Faker::Time.backward,
    arrival_city: Faker::Address.city,
    departure_city: Faker::Address.city,
    leg_id: 1
  )
end

2.times do
  Transportation.create(
    departure_time: Faker::Time.forward,
    arrival_time: Faker::Time.backward,
    arrival_city: Faker::Address.city,
    departure_city: Faker::Address.city,
    leg_id: 2
  )
end

# 1.times do
#   new = TugoService.new(User.first)
#   new.create_travel_info
# end

# 1.times do
#   new = TugoService.new(User.first)
#   new.create_travel_info
# end

6.times do
  location = Geocoder.search(Faker::Internet.ip_v4_address).first

  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    latitude: location.latitude,
    longitude: location.longitude
  )
end

2.times do
  location = Geocoder.search(Faker::Internet.ip_v4_address).first
  Notification.create(
    unread: true,
    sender_id: 2,
    receiver_id: 1,
    message: Faker::Hipster.sentence,
    latitude: location.latitude,
    longitude: location.longitude
  )
end

1.times do
  location = Geocoder.search(Faker::Internet.ip_v4_address).first

  Notification.create(
    unread: true,
    sender_id: 1,
    receiver_id: 2,
    message: Faker::Hipster.sentence,
    latitude: location.latitude,
    longitude: location.longitude

  )
end

1.times do
  location = Geocoder.search(Faker::Internet.ip_v4_address).first
  Notification.create(
    unread: false,
    sender_id: 1,
    receiver_id: 3,
    message: Faker::Hipster.sentence,
    latitude: location.latitude,
    longitude: location.longitude
  )
end
