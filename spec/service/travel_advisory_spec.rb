require 'rails_helper'

describe 'Travel Advisory Service' do

  before :each do
    ta = TravelAdvisoryService.new
    @advisory = ta.get_json
  end

  it "Can get a forecast for a coordinates" do
    expect(@advisory).not_to be_empty
  end

end
