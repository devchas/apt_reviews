FactoryGirl.define do
	factory :answer do
		response { [true, false].sample }
		review
	end
end