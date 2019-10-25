require 'rails_helper'
describe 'Triposo' do
  before :each do
    user = User.create!(name: 'User Name 1', email: 'email_1@example.com', role: 'wanderer')
    trip = Trip.create!(name: 'Trip 1', start_date: '2019-09-30', end_date: '2019-10-31', user: user)
    leg = Leg.create!(name: 'Leg 1', start_location: 'Berlin', end_location: 'Hamburg', start_date: '2019-09-30', end_date: '2019-10-02', trip: trip)
    destination = Destination.create!(city: 'Paris', country: "France", latitude: 48.864716, longitude: 2.349014, leg: leg)
    triposo = TriposoService.new(destination)
    @service = triposo.create_pois
  end

  it "Imports Triposo" do
    expect(@service).not_to be_empty
  end
end
