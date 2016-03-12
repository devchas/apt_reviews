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