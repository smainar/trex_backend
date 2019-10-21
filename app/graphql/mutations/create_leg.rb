module Mutations
  class CreateLeg < GraphQL::Schema::RelayClassicMutation

    field :leg, Types::LegType, null: false

    argument :name, String, required: true
    argument :start_date, String, required: true
    argument :end_date, String, required: true
    argument :origin, String, required: true
    argument :destination, String, required: true
    argument :trip_id, Integer, required: true

    def resolve(name:, start_date:, end_date:, origin:, destination:, trip_id:)
      leg = Leg.create!(name: name, start_date: start_date, end_date: end_date, origin: origin, destination: destination, trip_id: trip_id)
      {
        leg: leg
      }
    end
  end
end
