class Destination < ApplicationRecord
  belongs_to :leg
  has_many :lodgings
  has_one :currency_information

  geocoded_by :city     #can also be an IP address

  after_validation :geocode       # auto-fetch coordinates
  end
