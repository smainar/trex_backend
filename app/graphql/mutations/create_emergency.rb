module Mutations
  class CreateEmergency < GraphQL::Schema::RelayClassicMutation
    field :emergency, Types::EmergencyType, null: false

    argument :user_id, Integer, required: true
    argument :latitude, Float, required: false
    argument :longitude, Float, required: false
    def resolve(user_id:, latitude:, longitude:)
      emergency = Emergency.new(
        user_id: user_id,
        latitude: latitude,
        longitude: longitude
      )

      if emergency.save
        {
          emergency: emergency,
          errors: [],
        }
      else
        {
          emergency: nil,
          errors: emergency.errors.full_messages
        }
      end
    end
  end
end
