module AptDevHelper
	def create_listing
		apartment = Apartment.new(
			:street_address => Faker::Address.street_address,
			:street => Faker::Address.street_name,
			:city => Faker::Address.city,
			:state => Faker::Address.state,
			:zip => Faker::Address.zip)
		apartment.save!
	end
end