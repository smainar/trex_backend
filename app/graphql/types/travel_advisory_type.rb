module Types
  class TravelAdvisoryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :score, Float, null: false
    field :message, String, null: true

  end
end
