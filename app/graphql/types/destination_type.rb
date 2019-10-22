module Types
  class DestinationType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :leg_id, Integer, null: false
  end
end
