module Types
  class FriendshipType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :friend_id, Integer, null: false
    field :emergency_contact, Boolean, null: false
    field :relationship, Integer, null: false
    field :friends, [Types::UserType], null: true, method: :friends
  end
end
