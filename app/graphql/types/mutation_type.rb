module Types
  class MutationType < Types::BaseObject
    field :removeNotification, mutation: Mutations::RemoveNotification
    field :updateNotification, mutation: Mutations::UpdateNotification
    field :createNotification, mutation: Mutations::CreateNotification
    field :removeTransportation, mutation: Mutations::RemoveTransportation
    field :updateTransportation, mutation: Mutations::UpdateTransportation
    field :createTransportation, mutation: Mutations::CreateTransportation
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
    field :createFollower, mutation: Mutations::CreateFollower
    field :updateFollower, mutation: Mutations::UpdateFollower
    field :removeFollower, mutation: Mutations::RemoveFollower
  end
end
