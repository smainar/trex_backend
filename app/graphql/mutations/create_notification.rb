module Mutations
  class CreateNotification < GraphQL::Schema::RelayClassicMutation
    field :notification, Types::NotificationType, null: false
    field :errors, [String], null: false

    argument :active, Boolean, required: true
    argument :user_id, Integer, required: true

    def resolve(active:, user_id:)
      notification = Notification.new(
        active: active,
        user_id: user_id
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
