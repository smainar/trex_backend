module Mutations
  class RemoveTransportation < GraphQL::Schema::RelayClassicMutation

    field :transportation, Types::TransportationType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Transportation.find(id).destroy
    end
  end
end
