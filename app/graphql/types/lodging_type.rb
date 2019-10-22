module Types
  class LodgingType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :arrival_date, String, null: false
    field :departure_date, String, null: false
    field :city, String, null: false
    field :destination_id, Integer, null: false
  end
end
