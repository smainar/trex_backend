class User < ApplicationRecord
  has_many :trips, dependent: :destroy

end
