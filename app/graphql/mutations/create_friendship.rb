module Mutations
  class CreateFriendship < GraphQL::Schema::RelayClassicMutation
    field :friends, [Types::UserType], null: false

    argument :user_id, Integer, required: true
    argument :friend_id, Integer, required: true

    def resolve(user_id:, friend_id:)
      friendship = Friendship.new(
        user_id: user_id,
        friend_id: friend_id
      )

      if friendship.save
        {
          friends: User.find(user_id).friends,
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
