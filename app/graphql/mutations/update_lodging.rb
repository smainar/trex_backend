module Mutations
  class UpdateLodging < GraphQL::Schema::RelayClassicMutation
    field :lodging, Types::LodgingType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :arrival_date, String, required: false
    argument :departure_date, String, required: false
    argument :city, String, required: false
    argument :leg_id, Integer, required: false

    def resolve(id:, name: nil, arrival_date: nil, departure_date: nil, city: nil, leg_id: nil)
      lodging = Lodging.find(id)

      if lodging.update(
        name: name,
        arrival_date: arrival_date,
        departure_date: departure_date,
        city: city,
        leg_id: leg_id
      )
        { lodging: lodging }
      else
        { errors: lodging.errors.full_messages }
      end
    end
  end
end
