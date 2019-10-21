module Types
  class LegType < Types::BaseObject
    field :name, String, null: false
    field :start_date, String, null: false
    field :end_date, String, null: false
    field :origin, String, null: false
    field :trip_id, Integer, null: false

  end
end
