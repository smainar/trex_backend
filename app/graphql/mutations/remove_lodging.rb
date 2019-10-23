module Mutations
  class RemoveLodging < GraphQL::Schema::RelayClassicMutation

    field :lodging, Types::LodgingType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Lodging.find(id).destroy
    end
  end
end
