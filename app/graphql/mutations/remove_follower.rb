module Mutations
  class RemoveFollower < GraphQL::Schema::RelayClassicMutation

    field :follower, Types::FollowerType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      follower = Follower.find(id)
      follower.destroy
      { follower: follower }
    end
  end
end
