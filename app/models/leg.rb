class Leg < ApplicationRecord
  belongs_to :trip
  has_many :destinations, dependent: :destroy
end
