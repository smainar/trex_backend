class Destination < ApplicationRecord
  belongs_to :leg
  has_many :lodgings
end
