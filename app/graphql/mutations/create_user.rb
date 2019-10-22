module Mutations
  class CreateUser < GraphQL::Schema::RelayClassicMutation

    field :user, Types::UserType, null: false

    argument :name, String, required: true
    argument :email, String, required: true
    argument :role, Integer, required: true

    def resolve(name:, email:, role:)
      user = User.create!(name: name, email: email, role: role)
      {
        user: user
      }
    end
  end
end
