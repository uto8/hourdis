class Station < ApplicationRecord
  validates :station_name, presence: true, uniqueness: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  has_many :reservations
end
