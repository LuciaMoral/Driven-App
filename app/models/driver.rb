class Driver < ApplicationRecord
  validates :license_type, :years_driving, :transmission, :location, :price, uniqueness: true
  
  has_one_attached :photo
end