module Mutations
  class UpdateNotification < GraphQL::Schema::RelayClassicMutation
    field :notification, Types::NotificationType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :active, Boolean, required: false
    argument :user_id, Integer, required: false

    def resolve(id:, active: nil, user_id: nil)
      notification = Notification.find(id)

      if notification.update(active: active, user_id: user_id)
        {
          notification: notification ,
          errors: [],
        }
      else
        {
          errors: notification.errors.full_messages
        }
      end
    end
  end
end
