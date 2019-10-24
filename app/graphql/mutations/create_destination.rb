module Mutations
  class CreateDestination < GraphQL::Schema::RelayClassicMutation

    field :destination, Types::DestinationType, null: false

    argument :city, String, required: true
    argument :leg_id, Integer, required: true

    def resolve(city:, country:, leg_id:)
      destination = Destination.create!(city: city, country: country, leg_id: leg_id)
      {
        destination: destination
      }
    end
  end
end
