FactoryGirl.define do
	factory :review_question do
		question { Faker::Lorem.sentence }
		# method { Faker::Lorem.word }
		category { Faker::Lorem.word }
	end
end