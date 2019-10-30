module Mutations
  class CreateNotification < GraphQL::Schema::RelayClassicMutation
    field :notification, Types::NotificationType, null: false
    field :errors, [String], null: false

    argument :sender_id, Integer, required: true
    argument :receiver_id, Integer, required: true
    argument :message, String, required: true
    argument :latitude, Float, required: false
    argument :longitude, Float, required: false
    def resolve(sender_id:, receiver_id:, message:, latitude:, longitude:)
      notification = Notification.new(
        sender_id: sender_id,
        receiver_id: receiver_id,
        message: message,
        latitude: latitude,
        longitude: longitude
      )
      if notification.save
        {
          notification: notification,
          errors: [],
        }
      else
        {
          notification: nil,
          errors: notification.errors.full_messages
        }
      end
    end
  end
end
