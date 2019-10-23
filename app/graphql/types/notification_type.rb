module Types
  class NotificationType < Types::BaseObject
    field :id, ID, null: false
    field :active, Boolean, null: false
    field :user_id, Integer, null: false
  end
end
