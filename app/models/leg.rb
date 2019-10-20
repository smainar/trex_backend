class Leg < ApplicationRecord
  belongs_to :trip
  has_many :locations, dependent: :destroy
  has_one :itinerary, dependent: :destroy
end
