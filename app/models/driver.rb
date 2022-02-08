class Driver < ApplicationRecord
  validates :price, uniqueness: true
  validates :name, :license_type, :years_driving, :transmission, :location, presence: true
  has_one_attached :photo
  has_many :bookings

  # [...]
  include PgSearch::Model
  pg_search_scope :search_by_location_and_transmission,
    against: [ :location, :transmission ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
