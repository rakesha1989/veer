class Movie < ActiveRecord::Base

  belongs_to :screen
  has_many :online_bookings
  has_many :bookings, through: :online_bookings
  
end
