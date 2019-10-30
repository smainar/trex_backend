class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_many :notifications_sent, class_name: "Notification", foreign_key: :sender_id
  has_many :notifications_received, class_name: "Notification", foreign_key: :receiver_id
  has_one :current_location_information
  validates_presence_of :name
  validates :email, presence: true, uniqueness: true
  enum role: ['wanderer', 'follower', 'admin']
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: 'Friendship', foreign_key: 'friend_id', dependent: :destroy
  has_many :inverse_friends, through: :inverse_friendships, source: :user, dependent: :destroy
  has_many :emergencies
end
