class Screen < ActiveRecord::Base

	has_many :movies
	belongs_to :veeresh
	
end
