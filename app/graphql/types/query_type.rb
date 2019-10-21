module Types
  class QueryType < Types::BaseObject

    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, [Types::UserType], null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :trips, [Types::TripType], null: false

    def trips
      Trip.all
    end

    field :trip, [Types::TripType], null: false do
      argument :id, ID, required: true
    end

    def trip(id:)
      Trip.find(id)

    end
    field :legs, [Types::LegType], null: false

    def legs
      Leg.all
    end
    
    field :trip, [Types::LegType], null: false do
      argument :id, ID, required: true
    end

    def leg(id:)
      Leg.find(id)
    end
  end
end
