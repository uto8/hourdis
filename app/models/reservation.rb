class Reservation < ApplicationRecord
  belongs_to :station
  belongs_to :user

  validates :date, presence: true
  validates :station, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
