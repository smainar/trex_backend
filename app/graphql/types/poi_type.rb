module Types
  class PoiType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :score, Float, null: false
    field :type, String, null: true
    field :snippet, String, null: false

  end
end
