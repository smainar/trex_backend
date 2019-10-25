require 'rails_helper'
describe 'Tugo' do
  before :each do
    tugo = TugoService.new
    @countries = tugo.get_countries
    @country_info = tugo.create_travel_info
    @embassy = tugo.create_embassies
  end

  it "Imports Triposo" do
    expect(@country_info).not_to be_empty
  end

  xit "Imports Triposo" do
    expect(@embassy).not_to be_empty
  end
end
