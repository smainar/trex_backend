module Mutations
  class UpdateTransportation < GraphQL::Schema::RelayClassicMutation
    field :transportation, Types::TransportationType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :mode, String, required: false
    argument :arrival_time, String, required: false
    argument :departure_time, String, required: false
    argument :arrival_city, String, required: false
    argument :departure_city, String, required: false
    argument :leg_id, Integer, required: false

    def resolve(id:, mode: nil, arrival_time: nil, departure_time: nil, arrival_city: nil, departure_city: nil, leg_id: nil)
      transportation = Transportation.find(id)

      if transportation.update(mode: mode, arrival_time: arrival_time, departure_time: departure_time, arrival_city: arrival_city, departure_city: departure_city, leg_id: leg_id)
        {
          transportation: transportation,
          errors: [],
        }
      else
        {
          transportation: nil,
          errors: transportation.errors.full_messages
        }
      end
    end
  end
end
