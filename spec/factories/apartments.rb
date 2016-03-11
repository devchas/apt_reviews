FactoryGirl.define do
	factory :apartment do
		steet_address { Faker::Address.street_address }
		street { Faker::Address.street_name }
		city { Faker::Address.city }
		state { Faker::Address.state }
		zip { Faker::Address.zip }
	end
end