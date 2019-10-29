require 'rails_helper'

RSpec.describe Leg, type: :model do
  it { should belong_to :trip }
  it { should have_many :destinations }
  it { should have_many :lodgings }
end
