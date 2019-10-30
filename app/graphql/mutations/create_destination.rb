module Mutations
  class CreateDestination < GraphQL::Schema::RelayClassicMutation

    field :destination, Types::DestinationType, null: false

    argument :city, String, required: true
    argument :country, String, required: true
    argument :latitude, Float, required: false
    argument :longitude, Float, required: false
    argument :leg_id, Integer, required: true

    def resolve(city:, country:, leg_id:)
      destination = Destination.new(
        city: city,
        country: country,
        leg_id: leg_id
      )

      if destination.save
        {
          destination: destination,
          errors: [],
        }
      else
        {
          destination: nil,
          errors: destination.errors.full_messages
        }
      end
    end
  end
end
