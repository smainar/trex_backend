module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :role, Integer, null: true
    field :trips, [Types::TripType], null: true
    field :notifications, [Types::NotificationType], null: true
    field :followers, [Types::FollowerType], null: true
  end
end
