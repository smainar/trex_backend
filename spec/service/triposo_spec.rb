require 'rails_helper'

describe 'Triposo' do

  before :each do
    triposo = TriposoService.new
    @service = triposo.create_poi
  end

  it "Can get a forecast for a coordinates" do
    expect(@service).not_to be_empty
  end

end
