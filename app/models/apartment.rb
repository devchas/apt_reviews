class Apartment < ActiveRecord::Base
	has_many :reviews

	def full_address
		street_address << " " << street << ", " << city << ", " << state
	end
end