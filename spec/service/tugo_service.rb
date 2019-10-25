require 'rails_helper'
describe 'Triposo' do
  before :each do
    tugo = TugoService.new("GR")
    @service = tugo.create_alerts
  end

  it "Imports Triposo" do
    expect(@service).not_to be_empty
  end
end
