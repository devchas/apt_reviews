FactoryGirl.define do
	factory :user do
		name { Faker::Internet.user_name }
		email { Faker::Internet.free_email(name) }
	end
end