class Game < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
