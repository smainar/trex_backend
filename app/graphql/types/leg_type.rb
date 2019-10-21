module Types
  class LegType < Types::BaseObject
    field :name, String, null: false
    field :start_date, String, null: false
    field :end_date, String, null: false
    field :origin, String, null: false
    field :destination, String, null: false

  end
end
