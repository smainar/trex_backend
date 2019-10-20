class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_one :current_location

end
