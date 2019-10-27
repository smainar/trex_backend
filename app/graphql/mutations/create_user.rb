module Mutations
  class CreateUser < GraphQL::Schema::RelayClassicMutation

    field :user, Types::UserType, null: false

    argument :name, String, required: true
    argument :email, String, required: true
    argument :role, Integer, required: true

    def resolve(name:, email:, role:)
      user = User.new(
        name: name,
        email: email,
        role: role
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
