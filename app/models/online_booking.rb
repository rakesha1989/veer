class OnlineBooking < ActiveRecord::Base

	belongs_to :movie
	belongs_to :booking
	
end
