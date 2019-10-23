module Mutations
  class UpdateDestination < GraphQL::Schema::RelayClassicMutation
    field :destination, Types::DestinationType, null: true
    field :errors, [String], null: false
    
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :leg_id, Integer, required: false


    def resolve(id:, name: nil, leg_id: nil)
      destination = Destination.find(id)

      if destination.update(name: name, leg_id: leg_id)
        { destination: destination }
      else
        { errors: destination.errors.full_messages }
      end
    end
  end
end
