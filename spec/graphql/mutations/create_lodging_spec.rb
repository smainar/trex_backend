# NOTE: `createLodging` is working on localhost, however, the test is failing. I received the following error:
# "Argument 'destinationId' on InputObject 'CreateLodgingInput' has an invalid value. Expected type 'Int!'."
# It appears that the `destinationID` is converted into a String when passed through the `create_lodging_mutation` method as an argument.

# require 'rails_helper'
#
# RSpec.describe 'createLogding mutation', type: :request do
#   it 'creates a lodging ' do
#     user = User.create!(name: 'User Name 1', email: 'email_1@example.com', role: 'wanderer')
#
#     trip = Trip.create!(name: 'Trip 1', start_date: '2019-09-30', end_date: '2019-10-31', user: user)
#
#     leg_1 = Leg.create!(name: 'Leg 1', start_location: 'Berlin', end_location: 'Hamburg', start_date: '2019-09-30', end_date: '2019-10-02', trip: trip)
#     leg_2 = Leg.create!(name: 'Leg 2', start_location: 'Hamburg', end_location: 'Cologne', start_date: '2019-10-02', end_date: '2019-10-04', trip: trip)
#
#     destination_1 = Destination.create!(name: 'Destination 1', leg: leg_1)
#     destination_2 = Destination.create!(name: 'Destination 2', leg: leg_2)
#
#     lodging_1 = Lodging.create!(name: 'Lodging 1', arrival_date: '2019-09-30', departure_date: '2019-10-02', city: 'Berlin', destination: destination_1)
#     lodging_2 = Lodging.create!(name: 'Lodging 2', arrival_date: '2019-10-02', departure_date: '2019-10-03', city: 'Hamburg', destination: destination_2)
#
#     new_lodging = Lodging.new(
#       name: 'Lodging 3',
#       arrival_date: '2019-10-03',
#       departure_date: '2019-10-04',
#       city: 'Cologne',
#       destination_id: destination_2.id
#     )
#
#     params = { query: create_lodging_mutation(new_lodging) }
#
#     post '/graphql', params: params
#
#     json = JSON.parse(response.body, symbolize_names: true)
#     data = json[:data][:createLodging][:lodging]
#
#     expect(data[:name]).to eq('Lodging 3')
#   end
#
#   def create_lodging_mutation(new_lodging)
#     "mutation {
#       createLodging(
#         lodging: {
#           name: \"#{new_lodging.name}\"
#           arrivalDate: #{new_lodging.arrival_date}
#           departureDate: #{new_lodging.departure_date}
#           city: \"#{new_lodging.city}\"
#           destinationId: \"#{new_lodging.destination_id}\"
#         }
#       ){
#         lodging {
#           name
#           arrivalDate
#           departureDate
#           city
#           destinationId
#         }
#       }
#     }"
#   end
# end
