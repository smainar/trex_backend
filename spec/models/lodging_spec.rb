require 'rails_helper'

RSpec.describe Lodging, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :arrival_date }
    it { should validate_presence_of :departure_date }
    it { should validate_presence_of :city }
  end

  describe 'relationships' do
    it { should belong_to :leg }
  end
end
