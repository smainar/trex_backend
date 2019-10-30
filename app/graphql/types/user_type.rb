module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :role, Integer, null: true
    field :latitude, Float, null: true
    field :longitude, Float, null: true
    field :phone_number, String, null: true
    field :trips, [Types::TripType], null: true
    field :notifications_sent, [Types::NotificationType], null: true, method: :notifications_sent
    field :notifications_received, [Types::NotificationType], null: true, method: :notifications_received
    field :friends, [Types::UserType], null: true, method: :friends
    field :friendships, [Types::FriendshipType], null: true
    field :current_location_information, Types::CurrentLocationInformationType, null: true, method: :current_location_information
  end
end
