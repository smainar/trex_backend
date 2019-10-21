module Types
  class TripType < Types::BaseObject
    field :name, String, null: false
    field :start_date, String, null: false
    field :end_date, String, null: false
    field :user_id, Integer, null: false
  end
end
