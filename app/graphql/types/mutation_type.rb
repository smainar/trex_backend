module Types
  class MutationType < Types::BaseObject
    field :createLodging, mutation: Mutations::CreateLodging
    field :createTrip, mutation: Mutations::CreateTrip
    field :removeTrip, mutation: Mutations::RemoveTrip
    # field :updateTrip, mutation: Mutations::UpdateTrip
    field :createLeg, mutation: Mutations::CreateLeg
    field :removeLeg, mutation: Mutations::RemoveLeg
  #   field :updateLeg, mutation: Mutations::UpdateLeg

    field :createLodging, mutation: Mutations::CreateLodging
  end
end
