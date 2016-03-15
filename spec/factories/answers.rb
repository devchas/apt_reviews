FactoryGirl.define do
	factory :answer do
		response { [true, false].sample }
		review
		review_question
	end
end