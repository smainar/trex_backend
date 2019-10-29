module Types
  class DestinationType < Types::BaseObject
    field :id, ID, null: false
    field :city, String, null: false
    field :country, String, null: false
    field :latitude, Float, null: true
    field :longitude, Float, null: true
    field :leg_id, Integer, null: false
  end
end
