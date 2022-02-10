class Driver < ApplicationRecord
  validates :price, uniqueness: true
  validates :name, :license_type, :years_driving, :transmission, :location, presence: true
  has_one_attached :photo
  has_many :bookings

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
