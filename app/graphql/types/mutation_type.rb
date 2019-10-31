module Types
  class MutationType < Types::BaseObject    
    field :createUser, mutation: Mutations::CreateUser
    field :removeUser, mutation: Mutations::RemoveUser
    field :updateUser, mutation: Mutations::UpdateUser
    field :createTrip, mutation: Mutations::CreateTrip
    field :updateTrip, mutation: Mutations::UpdateTrip
    field :removeTrip, mutation: Mutations::RemoveTrip
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
    field :removeFriendship, mutation: Mutations::RemoveFriendship
    field :createEmergency, mutation: Mutations::CreateEmergency
  end
end
