class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :end_time, presence: true
  validates :start_time, presence: true
end
