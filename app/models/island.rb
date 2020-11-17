class Island < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, :price, :capacity, presence: true
end
