module Mutations
  class RemoveFriendship < GraphQL::Schema::RelayClassicMutation
    field :message, String, null: false
    argument :id, ID, required: true

    def resolve(id:)
      friend = User.find(id)
      friend.destroy
      { message: "You deleted a follower!" }
    end
  end
end
