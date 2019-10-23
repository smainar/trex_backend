class Transportation < ApplicationRecord
  belongs_to :leg

  enum mode: ['flight', 'bus']
end
