module Mutations
  class UpdateLodging < GraphQL::Schema::RelayClassicMutation
    field :lodging, Types::LodgingType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :arrival_date, String, required: false
    argument :departure_date, String, required: false
    argument :city, String, required: false
    argument :destination_id, Integer, required: false

    def resolve(id:, name: nil, arrival_date: nil, departure_date: nil, city: nil, destination_id: nil)
      lodging = Lodging.find(id)

      if lodging.update(name: name, arrival_date: arrival_date,departure_date: departure_date, city: city, destination_id: destination_id)
        {
          lodging: lodging ,
          errors: [],
        }
      else
        {
          errors: lodging.errors.full_messages
        }
      end
    end
  end
end
