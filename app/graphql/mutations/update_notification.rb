module Mutations
  class UpdateNotification < GraphQL::Schema::RelayClassicMutation
    field :notification, Types::NotificationType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :unread, Boolean, required: true

    def resolve(id:, unread:)
      notification = Notification.find(id)

      if notification.update(
<<<<<<< HEAD
        unread: unread,
=======
        unread: unread
>>>>>>> 69acfe328eab6bac65b03a49744b51e97f41dd61
      )
        { notification: notification }
      else
        { errors: notification.errors.full_messages }
      end
    end
  end
end
