class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_flats_by_name_description_address,
    against: %i[name description address],
    using: {
      tsearch: { prefix: true }
    }
end
