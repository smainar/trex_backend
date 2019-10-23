module Mutations
  class RemoveLeg < GraphQL::Schema::RelayClassicMutation

    field :leg, Types::LegType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Leg.find(id).destroy
    end
  end
end
