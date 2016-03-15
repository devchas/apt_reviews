# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
	apartment = FactoryGirl.create(:apartment)
	10.times do
		user = FactoryGirl.create(:user)
		FactoryGirl.create(:review, user: user, apartment: apartment)
	end
end

questions = [
	"How is the shower pressure?",
	"Does hot water last in the shower?",
	"Does it take a while for the shower to heat up?",
	"Does the toilet clog often?",
	"Is your apartment in a safe area?",
	"Do you hear noise from outside while in your apartment?",
	"Do you have access to transportation?",
	"How are the local food delivery options?",
	"How are the local dining out options?"
]

methods = [
	"shower_pressure",
	"hot_water_lasts",
	"long_to_heat_water",
	"toilet_clogs",
	"safe",
	"noise_outside",
	"transportation_access",
	"delivery",
	"dining"
]

categories = [
	"bathroom",
	"bathroom",
	"bathroom",
	"bathroom",
	"neighborhood",
	"neighborhood",
	"neighborhood",
	"neighborhood",
	"neighborhood"
]

responses = [
	"good",
	"yes",
	"yes",
	"yes",
	"yes",
	"yes",
	"yes",
	"good",
	"good"
]

i = 0

methods.length.times do
	Review_question.create(
		:question => questions[i],
		:method => methods[i],
		:category => categories[i],
		:response => responses[i])
	i += 1
end

