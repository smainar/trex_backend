module Types
  class DestinationType < Types::BaseObject
    field :id, ID, null: false
    field :city, String, null: false
    field :country, String, null: false
    field :latitude, String, null: true
    field :longitude, String, null: true
    field :leg_id, Integer, null: false
    field :lodgings, [Types::LodgingType], null: true
  end
end
