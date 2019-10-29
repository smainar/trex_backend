require 'rails_helper'

RSpec.describe 'Lodgings Query', type: :request do
  it 'returns all lodgings' do
    user = User.create!(name: 'User Name 1', email: 'email_1@example.com', role: 'wanderer', phone_number: "123-456-7890", latitude: 26.3100493248533, longitude: -42.7626012974382)

    trip = Trip.create!(name: 'Trip 1', start_date: '2019-09-30', end_date: '2019-10-31', user: user)

    leg_1 = Leg.create!(name: 'Leg 1', start_location: 'Berlin', end_location: 'Hamburg', start_date: '2019-09-30', end_date: '2019-10-02', trip: trip)
    leg_2 = Leg.create!(name: 'Leg 2', start_location: 'Hamburg', end_location: 'Cologne', start_date: '2019-10-02', end_date: '2019-10-04', trip: trip)

    destination_1 = Destination.create!(city: 'Destination 1', leg: leg_1)
    destination_2 = Destination.create!(city: 'Destination 2', leg: leg_2)

    lodging_1 = Lodging.create!(name: 'Lodging 1', arrival_date: '2019-09-30', departure_date: '2019-10-02', city: 'Berlin', leg: leg_1)
    lodging_2 = Lodging.create!(name: 'Lodging 2', arrival_date: '2019-10-02', departure_date: '2019-10-03', city: 'Hamburg', leg: leg_2)
    lodging_3 = Lodging.create!(name: 'Lodging 3', arrival_date: '2019-10-03', departure_date: '2019-10-04', city: 'Cologne', leg: leg_2)

    query = query {
              lodgings {
                name
                arrivalDate
                departureDate
                city
                legId
              }
            }

    post '/graphql', params: { query: query }

    json = JSON.parse(response.body, symbolize_names: true)
    data = json[:data][:lodgings]

    expect(data.count).to eq(3)
    expect(data[0][:name]).to eq('Lodging 1')
    expect(data[1][:name]).to eq('Lodging 2')
    expect(data[2][:name]).to eq('Lodging 3')
  end

  def query
    <<~GQL
      query {
        lodgings {
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
