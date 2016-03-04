class Apartment < ActiveRecord::Base
	validates :name, :email, :street, :apt_num, :city, :state, :zip_code, :rent_or_buy, presence: true
end