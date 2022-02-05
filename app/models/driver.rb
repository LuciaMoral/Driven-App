class Driver < ApplicationRecord
  validates :license_type, :years_driving, :transmission, :location, :price, uniqueness: true
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
end
