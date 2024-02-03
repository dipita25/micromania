class Game < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo
  validates :photo, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :platform, presence: true
end
