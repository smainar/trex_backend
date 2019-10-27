class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates_presence_of :name
  validates :email, presence: true, uniqueness: true

  enum role: ['wanderer', 'follower', 'admin']

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :inverse_friendships, class_name: 'Friendship', foreign_key: 'friend_id', dependent: :destroy
  has_many :inverse_friends, through: :inverse_friendships, source: :user, dependent: :destroy
end
