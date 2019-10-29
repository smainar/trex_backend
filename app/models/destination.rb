class Destination < ApplicationRecord
  belongs_to :leg
  has_many :pois
  has_one :currency_information
  geocoded_by :city
  after_validation :geocode
end
