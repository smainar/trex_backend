module Mutations
  class RemoveTransportation < GraphQL::Schema::RelayClassicMutation

    field :transportation, Types::TransportationType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      transportation = Transportation.find(id)
      transportation.destroy
      { transportation: transportation }
    end
  end
end
