module Mutations
  class CreateTrip < GraphQL::Schema::RelayClassicMutation

    field :trip, Types::TripType, null: false

    argument :name, String, required: true
    argument :start_date, String, required: true
    argument :end_date, String, required: true
    argument :user_id, Integer, required: true

    def resolve(name:, start_date:, end_date:, user_id:)
      trip = Trip.create!(name: name, start_date: start_date, end_date: end_date, user_id: user_id)
      {
        trip: trip
      }
    end
  end
end
