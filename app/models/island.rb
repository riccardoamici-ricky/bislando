class Island < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, :price, :capacity, presence: true
end
