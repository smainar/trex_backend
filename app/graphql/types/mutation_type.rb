module Types
  class MutationType < Types::BaseObject

    field :createTrip, mutation: Mutations::CreateTrip
    field :removeTrip, mutation: Mutations::RemoveTrip
    #field :updateTrip, mutation: Mutations::UpdateTrip
    field :createLeg, mutation: Mutations::CreateLeg
    field :removeLeg, mutation: Mutations::RemoveLeg
    #field :updateLeg, mutation: Mutations::UpdateLeg
    field :createDestination, mutation: Mutations::CreateDestination
    field :removeDestination, mutation: Mutations::RemoveDestination
    #field :updateLeg, mutation: Mutations::UpdateLeg
  end
end
