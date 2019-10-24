module Mutations
  class RemoveLeg < GraphQL::Schema::RelayClassicMutation

    field :leg, Types::LegType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      leg = Leg.find(id)
      leg.destroy
      { leg: leg }
    end
  end
end
