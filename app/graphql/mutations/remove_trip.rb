module Mutations
  class RemoveTrip < GraphQL::Schema::RelayClassicMutation

    field :trip, Types::TripType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Trip.find(id).destroy
    end
  end
end
