module Types
  class CurrentLocationInformationType < Types::BaseObject
    field :id, ID, null: false
    field :code, String, null: false
    field :passport_info, String, null: true
    field :visa_info, String, null: true
    field :has_advisory_warning, Boolean, null: true
    field :vaccine_info, String, null: true
    field :health_info, String, null: true
    field :transit_info, String, null: true
    field :user_id, Integer, null: true
  end
end
