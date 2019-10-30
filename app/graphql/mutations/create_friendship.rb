module Mutations
  class CreateFriendship < GraphQL::Schema::RelayClassicMutation
    field :friends, [Types::UserType], null: false

    argument :user_id, Integer, required: true
    argument :friend_id, Integer, required: true
    argument :emergency_contact, Boolean, required: true
    argument :relationship, Integer, required: true

    def resolve(user_id:, friend_id:, emergency_contact:, relationship:)
      friendship = Friendship.new(
        user_id: user_id,
        friend_id: friend_id,
        emergency_contact: emergency_contact,
        relationship: relationship
      )

      if friendship.save
        {
          friends: User.find(user_id).friends,
          emergency_contact: emergency_contact,
          relationship: relationship,
          errors: [],
        }
      else
        {
          friends: nil,
          errors: friendship.errors.full_messages
        }
      end
    end
  end
end
