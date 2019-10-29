module Mutations
  class UpdateUser < GraphQL::Schema::RelayClassicMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :role, Integer, required: false
    argument :phone_number, String, required: false
    argument :latitude, String, required: false
    argument :longitude, String, required: false

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(id:, name: nil, role: nil, phone_number: nil, latitude: nil, longitude: nil)
      user = User.find(id)

      if user.update(
        name: name,
        role: role,
        phone_number: phone_number,
        latitude: latitude,
        longitude: longitude
      )
        { user: user }
      else
        { errors: user.errors.full_messages }
      end
    end
  end
end
