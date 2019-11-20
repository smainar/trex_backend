require 'faker'

User.create(
  name: "Emily",
  email: "emily@gmail.com",
  role: "wanderer",
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude
)

User.create(
  name: "Ryan",
  email: "Ryan@gmail.com",
  role: "wanderer",
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude
)

User.create(
  name: "Kevin",
  email: "kevin@gmail.com",
  role: "wanderer",
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude
)

User.create(
  name: "Mom",
  email: "mom@gmail.com",
  role: "follower",
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude
)

User.create(
  name: "Dad",
  email: "dad@gmail.com",
  role: "follower",
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude
)

User.create(
  name: "grandma",
  email: "grandma@gmail.com",
  role: "follower",
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude
)

Friendship.create(user_id: 1, friend_id: 2, emergency_contact: true, relationship: 'travel companion')
Friendship.create(user_id: 1, friend_id: 3, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 1, friend_id: 4, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 1, friend_id: 5, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 1, friend_id: 6, emergency_contact: false, relationship: 'follower')

Friendship.create(user_id: 2, friend_id: 1, emergency_contact: true, relationship: 'travel companion')
Friendship.create(user_id: 2, friend_id: 3, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 2, friend_id: 4, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 2, friend_id: 5, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 2, friend_id: 6, emergency_contact: false, relationship: 'follower')

Friendship.create(user_id: 3, friend_id: 1, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 3, friend_id: 2, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 3, friend_id: 4, emergency_contact: true, relationship: 'follower')
Friendship.create(user_id: 3, friend_id: 5, emergency_contact: true, relationship: 'follower')
Friendship.create(user_id: 3, friend_id: 6, emergency_contact: false, relationship: 'follower')

Friendship.create(user_id: 4, friend_id: 1, emergency_contact: false, relationship: 'wanderer')
Friendship.create(user_id: 4, friend_id: 2, emergency_contact: false, relationship: 'wanderer')
Friendship.create(user_id: 4, friend_id: 3, emergency_contact: true, relationship: 'wanderer')
Friendship.create(user_id: 4, friend_id: 5, emergency_contact: false, relationship: 'follower')
Friendship.create(user_id: 4, friend_id: 6, emergency_contact: false, relationship: 'follower')

Friendship.create(user_id: 5, friend_id: 1, emergency_contact: false, relationship: 'wanderer')
Friendship.create(user_id: 5, friend_id: 2, emergency_contact: false, relationship: 'wanderer')
Friendship.create(user_id: 5, friend_id: 3, emergency_contact: false, relationship: 'wanderer')
Friendship.create(user_id: 5, friend_id: 4, emergency_contact: true, relationship: 'follower')
Friendship.create(user_id: 5, friend_id: 6, emergency_contact: false, relationship: 'follower')

Friendship.create(user_id: 6, friend_id: 1, emergency_contact: false, relationship: 'wanderer')
Friendship.create(user_id: 6, friend_id: 2, emergency_contact: false, relationship: 'wanderer')
Friendship.create(user_id: 6, friend_id: 3, emergency_contact: false, relationship: 'wanderer')
Friendship.create(user_id: 6, friend_id: 4, emergency_contact: true, relationship: 'follower')
Friendship.create(user_id: 6, friend_id: 5, emergency_contact: true, relationship: 'follower')

3.times do
  Trip.create(
    name: Faker::Address.country,
    start_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    end_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    user_id: 1
  )
end

4.times do
  Leg.create(
    start_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    end_date: Faker::Date.forward.strftime("%m-%d-%Y"),
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
    start_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    end_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    start_location: Faker::Address.city,
    end_location: Faker::Address.city,
    trip_id: 2
  )
end

2.times do
  Leg.create(
    start_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    end_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    start_location: Faker::Address.city,
    end_location: Faker::Address.city,
    trip_id: 3
  )
end

2.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    departure_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    city: Faker::Address.city,
    leg_id: 1
  )
end

2.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    departure_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    city: Faker::Address.city,
    leg_id: 2
  )
end

1.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    departure_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    city: Faker::Address.city,
    leg_id: 3
  )
end

1.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    departure_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    city: Faker::Address.city,
    leg_id: 4
  )
end

1.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    departure_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    city: Faker::Address.city,
    leg_id: 5
  )
end

1.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward.strftime("%m-%d-%Y"),
    departure_date: Faker::Date.forward.strftime("%m-%d-%Y"),
    city: Faker::Address.city,
    leg_id: 6
  )
end

3.times do
  Transportation.create(
    departure_time: Faker::Date.forward.strftime("%m-%d-%Y"),
    arrival_time: Faker::Date.backward.strftime("%m-%d-%Y"),
    arrival_city: Faker::Address.city,
    departure_city: Faker::Address.city,
    leg_id: 1
  )
end

2.times do
  Transportation.create(
    departure_time: Faker::Date.forward.strftime("%m-%d-%Y"),
    arrival_time: Faker::Date.backward.strftime("%m-%d-%Y"),
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
    message: "Checking In",
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
    message: "Checking In",
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
    message: "Checking In",
    latitude: location.latitude,
    longitude: location.longitude
  )
end
