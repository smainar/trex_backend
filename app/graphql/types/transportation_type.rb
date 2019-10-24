module Types
  class TransportationType < Types::BaseObject
    field :id, ID, null: false
    field :mode, String, null: false
    field :departure_time, String, null: false
    field :arrival_time, String, null: false
    field :departure_city, String, null: false
    field :arrival_city, String, null: false
    field :leg_id, Integer, null: false
  end
end
