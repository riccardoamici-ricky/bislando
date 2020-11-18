class Island < ApplicationRecord
  has_many :bookings
  has_many_attached :photos
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true, uniqueness: true
  validates :description, :price, :capacity, presence: true

end
