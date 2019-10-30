module Types
  class EmergencyType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :latitude, Float, null: false
    field :longitude, Float, null: true
  end
end
