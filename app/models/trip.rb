class Trip < ApplicationRecord
  belongs_to :user
  has_many :legs, dependent: :destroy
end
