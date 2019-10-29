require 'faker'

# <<<<<<< HEAD
# 3.times do
#   location = Geocoder.search(Faker::Internet.ip_v4_address).first
#   User.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     role: 0,
#     latitude: location.latitude,
#     longitude: location.longitude
# =======
6.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
# >>>>>>> 78afbd50a1e5c7435746c2580348ebce90ad3897
  )
end

Friendship.create(user_id: 1, friend_id: 2)
Friendship.create(user_id: 1, friend_id: 3)
Friendship.create(user_id: 1, friend_id: 4)

Friendship.create(user_id: 2, friend_id: 1)
Friendship.create(user_id: 2, friend_id: 3)
Friendship.create(user_id: 2, friend_id: 4)

Friendship.create(user_id: 3, friend_id: 1)
Friendship.create(user_id: 3, friend_id: 2)
Friendship.create(user_id: 3, friend_id: 4)

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

3.times do
  Lodging.create(
    name: Faker::Company.name,
    arrival_date: Faker::Date.backward,
    departure_date: Faker::Date.forward,
    city: Faker::Address.city,
    destination_id: 1
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

1.times do
  new = TugoService.new(User.first)
  new.create_travel_info
end


#
#
# 3.times do
#   Notification.create(
#     active: true,
#     user_id: 1
#   )
# end
#
# 2.times do
#   Notification.create(
#     active: true,
#     user_id: 2
#   )
# end
#
# 2.times do
#   Notification.create(
#     active: false,
#     user_id: 3
#   )
# end
