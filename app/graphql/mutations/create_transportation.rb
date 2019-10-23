module Mutations
  class CreateTransportation < GraphQL::Schema::RelayClassicMutation
    field :transportation, Types::TransportationType, null: false
    field :errors, [String], null: false

    argument :mode, String, required: true
    argument :arrival_time, String, required: true
    argument :departure_time, String, required: true
    argument :arrival_city, String, required: true
    argument :departure_city, String, required: true
    argument :leg_id, Integer, required: true

    def resolve(mode:, arrival_time:, departure_time:, arrival_city:, departure_city:, leg_id:)
      transportation = Transportation.new(
        mode: mode,
        arrival_time: arrival_time,
        departure_time: departure_time,
        arrival_city: arrival_city,
        departure_city: departure_city,
        leg_id: leg_id
      )

      if transportation.save
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
