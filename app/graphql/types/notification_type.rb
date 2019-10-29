module Types
  class NotificationType < Types::BaseObject
    field :id, ID, null: false
    field :unread, Boolean, null: false
    field :senderId, Integer, null: false
    field :receiverId, Integer, null: false
    field :message, String, null: false
    field :latitude, Float, null: false
    field :longitude, Float, null: false
  end
end
