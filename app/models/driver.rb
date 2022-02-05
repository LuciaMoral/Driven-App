class Driver < ApplicationRecord
  validates :price, uniqueness: true
  validates :name, :license_type, :years_driving, :transmission, :location, presence: true
  has_one_attached :photo
end
