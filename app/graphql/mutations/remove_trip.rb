module Mutations
  class RemoveTrip < GraphQL::Schema::RelayClassicMutation

    field :trip, Types::TripType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      trip = Trip.find(id)
      trip.destroy!
      { trip: trip }
    end
  end
end
