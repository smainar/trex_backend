class Transportation < ApplicationRecord
  belongs_to :leg

  enum type: []
end
