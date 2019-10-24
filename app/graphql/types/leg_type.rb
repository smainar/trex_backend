module Types
  class LegType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :start_date, String, null: false
    field :end_date, String, null: false
    field :start_location, String, null: false
    field :end_location, String, null: false
    field :trip_id, Integer, null: false
    field :destinations, [Types::DestinationType], null: true
    field :transportations, [Types::TransportationType], null: true
  end
end
