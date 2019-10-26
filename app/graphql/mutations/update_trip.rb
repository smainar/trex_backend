module Mutations
  class UpdateTrip < GraphQL::Schema::RelayClassicMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :start_date, String, required: false
    argument :end_date, String, required: false

    field :trip, Types::TripType, null: true
    field :errors, [String], null: false

    def resolve(id:, name: nil, start_date: nil, end_date: nil)
      trip = Trip.find(id)

      if trip.update(
        name: name,
        start_date: start_date,
        end_date: end_date
      )
        { trip: trip }
      else
        { errors: trip.errors.full_messages }
      end
    end
  end
end
