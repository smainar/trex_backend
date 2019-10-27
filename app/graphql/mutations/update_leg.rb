module Mutations
  class UpdateLeg < GraphQL::Schema::RelayClassicMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :start_date, String, required: false
    argument :end_date, String, required: false
    argument :start_location, String, required: false
    argument :end_location, String, required: false
    argument :trip_id, Integer, required: false

    field :leg, Types::LegType, null: true
    field :errors, [String], null: false
    def resolve(id:, start_date: nil, end_date: nil, trip_id: nil, start_location: nil, end_location: nil)
      leg = Leg.find(id)

      if leg.update(
        start_date: start_date,
        end_date: end_date,
        trip_id: trip_id,
        start_location: start_location,
        end_location: end_location
      )
        { leg: leg }
      else
        { errors: leg.errors.full_messages }
      end
    end
  end
end
