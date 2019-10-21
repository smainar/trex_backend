module Types
  class UserType < Types::BaseObject

    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :trips, [Types::TripType], null: true
    field :legs, [Types::LegType], null: true

  end
end
