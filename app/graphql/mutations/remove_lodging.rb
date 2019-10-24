module Mutations
  class RemoveLodging < GraphQL::Schema::RelayClassicMutation

    field :lodging, Types::LodgingType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      lodging = Lodging.find(id)
      lodging.destroy
      { lodging: lodging }
    end
  end
end
