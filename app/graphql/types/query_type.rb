module Types
  class QueryType < Types::BaseObject

    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :trips, [Types::TripType], null: false

    def trips
      Trip.all
    end

    field :trip, Types::TripType, null: false do
      argument :id, ID, required: true
    end

    def trip(id:)
      Trip.find(id)
    end

    field :legs, [Types::LegType], null: false
    def legs
      Leg.all
    end

    field :leg, Types::LegType, null: false do
      argument :id, ID, required: true
    end

    def leg(id:)
      Leg.find(id)
    end

    field :destinations, [Types::DestinationType], null: false

    def destinations
      Destination.all
    end

    field :destination, Types::DestinationType, null: false do
      argument :id, ID, required: true
    end

    def destination(id:)
      Destination.find(id)
    end

    field :lodgings, [Types::LodgingType], null: false

    def lodgings
      Lodging.all
    end

    field :lodging, Types::LodgingType, null: false do
      argument :id, ID, required: true
    end

    def lodging(id:)
      Lodging.find(id)
    end

    field :transportations, [Types::TransportationType], null: false

    def transportations
      Transportation.all
    end

    field :transportation, Types::TransportationType, null: false do
      argument :id, ID, required: true
    end

    def transportation(id:)
      Transportation.find(id)
    end

    field :travel_advisories, [Types::TravelAdvisoryType], null: false

    def travel_advisories
      TravelAdvisory.all
    end

    field :notifications, [Types::NotificationType], null: false

    def notifications
      Notification.all
    end

    field :notification, Types::NotificationType, null: false do
      argument :id, ID, required: true
    end

    field :pois, [Types::PoiType], null: false

    def pois
      Poi.all
    end

    field :current_location_information, Types::CurrentLocationInformationType, null: false do
      argument :latitude, Float, required: true
      argument :longitude, Float, required: true
    end

    def current_location_information(latitude:, longitude:)
      tugo = TugoService.new(latitude, longitude)
      tugo.create_travel_info
      CurrentLocationInformation.last
    end

    field :embassies, [Types::EmbassyType], null: false do
      argument :latitude, Float, required: true
      argument :longitude, Float, required: true
    end

    def embassies(latitude:, longitude:)
      tugo = TugoService.new(latitude, longitude)
      tugo.create_embassies
      Embassy.where(created_at: (Time.now - 2.minutes)..Time.now)
    end
  end
end
