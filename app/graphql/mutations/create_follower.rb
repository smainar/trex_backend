module Mutations
  class CreateFollower < GraphQL::Schema::RelayClassicMutation
    field :follower, Types::FollowerType, null: false

    argument :name, String, required: true
    argument :email, String, required: true
    argument :user_id, Integer, required: true

    def resolve(name:, email:, user_id:)
      follower = Follower.new(
        name: name,
        email: email,
        user_id: user_id
      )
      if follower.save
        {
          follower: follower,
          errors: [],
        }
      else
        {
          follower: nil,
          errors: follower.errors.full_messages
        }
      end
    end
  end
end
