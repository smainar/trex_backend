module Types
  class NotificationType < Types::BaseObject
    field :id, ID, null: false
    field :active, Boolean, null: false
    field :senderId, Integer, null: false
    field :receiverId, Integer, null: false
    field :message, String, null: false
  end
end
