module Mutations
  class CreateDestination < GraphQL::Schema::RelayClassicMutation

    field :destination, Types::DestinationType, null: false

    argument :name, String, required: true
    argument :leg_id, Integer, required: true

    def resolve(name:, leg_id:)
      destination = Destination.create!(name: name, leg_id: leg_id)
      {
        destination: destination
      }
    end
  end
end
