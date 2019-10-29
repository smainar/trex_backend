require 'rails_helper'

RSpec.describe 'Lodging Query', type: :request do
  it 'returns a single lodging by id' do
    user = User.create!(name: 'User Name 1', email: 'email_1@example.com', role: 'wanderer', phone_number: "123-456-7890", latitude: 26.3100493248533, longitude: -42.7626012974382)

    trip = Trip.create!(name: 'Trip 1', start_date: '2019-09-30', end_date: '2019-10-31', user: user)

    leg_1 = Leg.create!(name: 'Leg 1', start_location: 'Berlin', end_location: 'Hamburg', start_date: '2019-09-30', end_date: '2019-10-02', trip: trip)
    leg_2 = Leg.create!(name: 'Leg 2', start_location: 'Hamburg', end_location: 'Cologne', start_date: '2019-10-02', end_date: '2019-10-04', trip: trip)

    destination_1 = Destination.create!(city: 'Destination 1', leg: leg_1)
    destination_2 = Destination.create!(city: 'Destination 2', leg: leg_2)

    lodging_1 = Lodging.create!(name: 'Lodging 1', arrival_date: '2019-09-30', departure_date: '2019-10-02', city: 'Berlin', leg: leg_1)
    lodging_2 = Lodging.create!(name: 'Lodging 2', arrival_date: '2019-10-02', departure_date: '2019-10-03', city: 'Hamburg', leg: leg_2)
    lodging_3 = Lodging.create!(name: 'Lodging 3', arrival_date: '2019-10-03', departure_date: '2019-10-04', city: 'Cologne', leg: leg_2)

    post '/graphql', params: { query: query(id: lodging_1.id) }

    json = JSON.parse(response.body, symbolize_names: true)
    data = json[:data][:lodging]

    expect(data[:name]).to eq('Lodging 1')
    expect(data[:city]).to eq('Berlin')
  end

  def query(id:)
    <<~GQL
      query {
        lodging(id: #{id}) {
          name
          arrivalDate
          departureDate
          city
          legId
        }
      }
    GQL
  end
end
