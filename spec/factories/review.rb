	FactoryGirl.define do
		factory :review do
			title { Faker::Lorem.sentence }
			description { Faker::Lorem.paragraphs(3).join(' ') }
			overal_rating { rand(5) }
			transportation_access { random_boolean = [true, false].sample }
			safe { random_boolean = [true, false].sample }
			fun_area { random_boolean = [true, false].sample }
			delivery { random_boolean = [true, false].sample }
			dining { random_boolean = [true, false].sample }
			noise_outside { random_boolean = [true, false].sample }
			noise_neighbors { random_boolean = [true, false].sample }
			appliances { random_boolean = [true, false].sample }
			mgmt_reliability { random_boolean = [true, false].sample }
			bldg_clean { random_boolean = [true, false].sample }
			construction { random_boolean = [true, false].sample }
			mgmt_accomodate { random_boolean = [true, false].sample }
			heating { random_boolean = [true, false].sample }
			cooling { random_boolean = [true, false].sample }
			hot_water_lasts { random_boolean = [true, false].sample }
			long_to_heat_water { random_boolean = [true, false].sample }
			shower_pressure { random_boolean = [true, false].sample }
			toilet_clogs { random_boolean = [true, false].sample }
			closet_space { random_boolean = [true, false].sample }
			apartment
			user
		end
	end