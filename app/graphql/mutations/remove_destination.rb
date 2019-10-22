module Mutations
  class RemoveDestination < GraphQL::Schema::RelayClassicMutation

    field :destination, Types::DestinationType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      destination = Destination.find(id)
      destination.destroy!
      { destination: destination }
    end
  end
end
