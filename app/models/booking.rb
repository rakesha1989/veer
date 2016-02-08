class Booking < ActiveRecord::Base

	has_many :online_bookings
	has_many :movies, through: :online_bookings
	
end
