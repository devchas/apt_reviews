	FactoryGirl.define do
		factory :review do
			title { Faker::Lorem.sentence }
			description { Faker::Lorem.paragraphs(3).join(' ') }
			overal_rating { rand(5) }
			apartment
			user
		end
	end