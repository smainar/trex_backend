module Mutations
  class RemoveTrip < GraphQL::Schema::RelayClassicMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :trip, Types::TripType, null: false
    # TODO: define arguments
    # argument :name, String, required: true
    argument :id, ID, required: true
    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(id:)
      trip = Trip.find(id)
      trip.destroy!
      { trip: trip }
    end
  end
end
