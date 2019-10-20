module Mutations
  class CreateTrip < GraphQL::Schema::RelayClassicMutation

        # TODO: define return fields
        # field :post, Types::PostType, null: false
        field :trip, Types::TripType, null: false
        # TODO: define arguments
        # argument :name, String, required: true
        argument :name, String, required: true
        argument :start_date, String, required: true
        argument :end_date, String, required: true
        argument :user_id, Integer, required: true
        # TODO: define resolve method
        # def resolve(name:)
        #   { post: ... }
        # end
        def resolve(name:, start_date:, end_date:, user_id:)
          trip = Trip.create!(name: name, start_date: start_date, end_date: end_date, user_id: user_id)
          {
            trip: trip
          }
        end
      end
    end
