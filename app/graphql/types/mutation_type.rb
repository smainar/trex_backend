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
  end
end
