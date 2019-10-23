module Mutations
  class RemoveNotification < GraphQL::Schema::RelayClassicMutation
    field :notification, Types::NotificationType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Notification.find(id).destroy
    end
  end
end
