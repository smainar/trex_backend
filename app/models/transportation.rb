class Transportation < ApplicationRecord
  belongs_to :leg

  enum type: ['flight', 'bus']
end
