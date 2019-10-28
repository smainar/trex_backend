module Types
  class MutationType < Types::BaseObject
    field :createUser, mutation: Mutations::CreateUser
    field :createTrip, mutation: Mutations::CreateTrip
    field :removeTrip, mutation: Mutations::RemoveTrip
    field :updateTrip, mutation: Mutations::UpdateTrip
    field :createLeg, mutation: Mutations::CreateLeg
    field :updateLeg, mutation: Mutations::UpdateLeg
    field :removeLeg, mutation: Mutations::RemoveLeg
    field :createDestination, mutation: Mutations::CreateDestination
    field :updateDestination, mutation: Mutations::UpdateDestination
    field :removeDestination, mutation: Mutations::RemoveDestination
    field :createLodging, mutation: Mutations::CreateLodging
    field :updateLodging, mutation: Mutations::UpdateLodging
    field :removeLodging, mutation: Mutations::RemoveLodging
    field :createTransportation, mutation: Mutations::CreateTransportation
    field :updateTransportation, mutation: Mutations::UpdateTransportation
    field :removeTransportation, mutation: Mutations::RemoveTransportation
    field :createNotification, mutation: Mutations::CreateNotification
    field :updateNotification, mutation: Mutations::UpdateNotification
    field :removeNotification, mutation: Mutations::RemoveNotification
    field :createFriendship, mutation: Mutations::CreateFriendship
    field :removeFriendship, mutation: Mutations::RemoveFriendship
  end
end
