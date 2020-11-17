class Booking < ApplicationRecord
  #belongs_to :user
  belongs_to :island
  belongs_to :user
end
