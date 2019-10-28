require 'rails_helper'
describe 'Tugo' do
  before :each do
    user = User.create!(name: 'User Name 1', email: 'email_1@example.com', latitude: 48.856614, longitude: 2.3522219)
    tugo = TugoService.new(user)
    @country_info = tugo.create_travel_info
    # @embassy = tugo.create_embassies
  end

  it "Imports Triposo" do
    expect(@country_info).not_to be_empty
  end

  xit "Imports Triposo" do
    expect(@embassy).not_to be_empty
  end
end
