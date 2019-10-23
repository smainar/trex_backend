module Mutations
  class RemoveNotification < GraphQL::Schema::RelayClassicMutation
    field :notification, Types::NotificationType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      notification = Notification.find(id)
      notification.destroy!
      { notification: notification }
    end
  end
end
