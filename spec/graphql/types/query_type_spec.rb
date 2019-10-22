require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'lodgings' do
    it "should return all lodgings" do
      destination_1 = Destination.create!()

      lodging_1 = Lodging.create!(name: "Lodging 1", arrival_date: "2019-10-03", departure_date: "2019-10-04", city: "City 1", destination_id: 1 )
      lodging_2 = Lodging.create!(name: "Lodging 2", arrival_date: "2019-10-04", departure_date: "2019-10-05", city: "City 1", destination_id: 1 )
      lodging_3 = Lodging.create!(name: "Lodging 3", arrival_date: "2019-10-05", departure_date: "2019-10-06", city: "City 1", destination_id: 1 )

      query = (
        %(query {
          lodgings {
            name
            arrivalDate
            departureDate
            city
            destinationId
          }
        })
      )
      lodgings = TrexBackendSchema.execute(query).as_json
    end

    # xit 'returns all lodgings' do
    #   expect(result.dig('data', 'lodgings')).to match_array(
    #     lodgings.map do |lodging|
    #       {
    #         'name' => lodging.name,
    #         'arrivalDate' => lodging.arrival_date,
    #         'departureDate' => lodging.departure_date,
    #         'city' => lodging.city,
    #         'destinationId' => lodging.destination_id
    #       }
    #     end
    #   )
    # end
  end
end
