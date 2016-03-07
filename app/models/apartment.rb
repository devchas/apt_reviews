class Apartment < ActiveRecord::Base
	validates :name, :email, :street, :city, :state, :rent_or_buy, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end