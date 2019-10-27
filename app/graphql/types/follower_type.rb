module Types
  class FollowerType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :role, Integer, null: false
    field :user_id, Integer, null: false
    field :trips, [Types::TripType], null: true
    field :notifications, [Types::NotificationType], null: true
  end
end
