module Types
  class MutationType < Types::BaseObject
    field :removeLeg, mutation: Mutations::RemoveLeg
    field :createLeg, mutation: Mutations::CreateLeg
    field :removeTrip, mutation: Mutations::RemoveTrip
    field :createTrip, mutation: Mutations::CreateTrip
    # TODO: remove me

  end
end
