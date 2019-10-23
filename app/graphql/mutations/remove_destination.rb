module Mutations
  class RemoveDestination < GraphQL::Schema::RelayClassicMutation

    field :destination, Types::DestinationType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Destination.find(id).destroy
    end
  end
end
