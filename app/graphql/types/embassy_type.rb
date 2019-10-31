module Types
  class EmbassyType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :address, String, null: false
      field :passport_services, Boolean, null: false
      field :lat, Float, null: false
      field :longitude, Float, null: false
      field :phone, String, null: false
      field :website, String, null: false
  end
end
