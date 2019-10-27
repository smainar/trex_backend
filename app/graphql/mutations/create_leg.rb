module Mutations
  class CreateLeg < GraphQL::Schema::RelayClassicMutation

    field :leg, Types::LegType, null: false

    argument :name, String, required: false
    argument :start_date, String, required: true
    argument :end_date, String, required: true
    argument :start_location, String, required: true
    argument :end_location, String, required: true
    argument :trip_id, Integer, required: true

    def resolve(start_date:, end_date:, start_location:, end_location:, trip_id:)
      leg = Leg.new(
        start_date: start_date,
        end_date: end_date,
        start_location: start_location,
        end_location: end_location,
        trip_id: trip_id
      )

      if leg.save
        {
          leg: leg,
          errors: [],
        }
      else
        {
          leg: nil,
          errors: leg.errors.full_messages
        }
      end
    end
  end
end
