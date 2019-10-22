require 'rails_helper'

RSpec.describe Types::QueryType do
  describe "a user can add a lodging" do

    let(:createLodging) do
      %(mutation {
        createLodging(
          name: 'Hilton Hotel',
          arrivalDate: '2019-10-10'
          departureDate: '2019-10-14'
          city: 'Paris'
          destinationId: 1
        ){
          name
          arrivalDate
          departureDate
          city
          destinationId
        }
      })
    end
    subject(:result) do
      TrexBackendSchema.execute(createLodging).as_json
    end

    it "returns a lodging" do
      lodging_result = result['data']['createLodging']
      expect(lodging_result['name']).to eq('Hilton Hotel')
      expect(lodging_result['arrivalDate']).to eq('2019-10-10')
      expect(lodging_result['departureDate']).to eq('2019-10-14')
      expect(lodging_result['city']).to eq('Paris')
    end
  end
end

# module Mutations
#   module Books
#     RSpec.describe CreateLodging, type: :request do
#       describe '.resolve' do
#         it 'creates a lodging' do
#           lodging = create(:lodging)
#
#           expect do
#             post '/graphl', params: { query: query(lodging_id: lodging.id) }
#           end.to change { Lodging.count }.by(1)
#         end
#
#         it 'returns a lodging' do
#           lodging = create(:lodging)
#
#           post '/graphql', params: { query: query(lodging_id: lodging.id) }
#           json = JSON.parse(response.body)
#           data = json['data']['createLodging']
#
#           expect(data).to include(
#             'id' => be_present
#             'name' =>
#             'arrivalDate' =>
#             'departureDate' =>
#             'city' =>
#             'destinationId' =>
#           )
#         end
#       end
#
#       def query(lodging_id:)
#         <<~GQL
#           mutation {
#             createLodging(
#               name: 'Hilton Hotel'
#               arrivalDate: '2019-10-10'
#               departureDate: '2019-10-14'
#               city: 'Paris'
#               destinationId: #{destination_id}
#             ) {
#               id
#               name
#               arrivalDate
#               departureDate
#               city
#               destinationId
#             }
#           }
#           GQL
#       end
#     end
#   end
# end
