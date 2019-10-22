module Mutations
  class CreateLodging < GraphQL::Schema::RelayClassicMutation

    field :lodging, Types::LodgingType, null: false
    field :errors, [String], null: false

    argument :name, String, required: true
    argument :arrival_date, String, required: true
    argument :departure_date, String, required: true
    argument :city, String, required: true
    argument :destination_id, Integer, required: true

    def resolve(name:, arrival_date:, departure_date:, city:, destination_id:)
      lodging = Lodging.new(
        name: name,
        arrival_date: arrival_date,
        departure_date: departure_date,
        city: city,
        destination_id: destination_id
      )
      if lodging.save
        {
          lodging: lodging ,
          errors: [],
        }
      else
        {
          lodging: nil,
          errors: lodging.errors.full_messages
        }
      end
    end
  end
end
