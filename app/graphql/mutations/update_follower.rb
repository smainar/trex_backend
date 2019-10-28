module Mutations
  class UpdateFollower < GraphQL::Schema::RelayClassicMutation
    field :follower, Types::FollowerType, null: true
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :email, String, required: false
    argument :user_id, Integer, required: false

    def resolve(id:, name: nil, email: nil, user_id: nil)
      follower = Follower.find(id)

      if follower.update(
        name: name,
        email: email,
        user_id: user_id
      )
        { follower: follower }
      else
        { errors: follower.errors.full_messages }
      end
    end
  end
end
