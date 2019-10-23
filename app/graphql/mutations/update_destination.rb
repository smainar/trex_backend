module Mutations
  class UpdateDestination < GraphQL::Schema::RelayClassicMutation

    field :destination, Types::DestinationType, null: false

    argument :id, Integer, required: true
    argument :name, String, required: false
    argument :leg_id, Integer, required: false

    def resolve(name:, leg_id:)
      destination = Destination.update!(name: name, leg_id: leg_id)
      {
        destination: destination
      }
    end
  end
end
