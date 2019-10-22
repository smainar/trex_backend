require 'rails_helper'

RSpec.describe Destination, type: :model do
  it { should belong_to :leg }
end
