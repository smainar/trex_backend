module Mutations
  class CreateUser < GraphQL::Schema::RelayClassicMutation

    field :user, Types::UserType, null: false

    argument :name, String, required: true
    argument :email, String, required: true
    argument :role, Integer, required: true
    argument :phone_number, String, required: true
    argument :latitude, String, required: false
    argument :longitude, String, required: false

    def resolve(name:, email:, role:, phone_number:)
      user = User.new(
        name: name,
        email: email,
        role: role,
        phone_number: phone_number
      )

      if user.save
        {
          user: user,
          errors: [],
        }
      else
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
end
