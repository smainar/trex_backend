module Mutations
  class UpdateDestination < GraphQL::Schema::RelayClassicMutation
    field :destination, Types::DestinationType, null: true
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :city, String, required: false
    argument :country, String, required: false
    argument :lat, Float, required: false
    argument :lng, Float, required: false
    argument :leg_id, Integer, required: false


    def resolve(id:, city: nil, country: nil, leg_id: nil)
      destination = Destination.find(id)

      if destination.update(city: city, country: country, leg_id: leg_id)
        { destination: destination }
      else
        { errors: destination.errors.full_messages }
      end
    end
  end
end
