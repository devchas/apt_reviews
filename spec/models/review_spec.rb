require 'rails_helper'

describe Review, type: :model do
	let!(:apartment) { FactoryGirl.create(:apartment) }
	let!(:user) { FactoryGirl.create(:user) }

	describe "user" do
		let!(:review_one) { FactoryGirl.create(:review, apartment: apartment, user: user) }
		let!(:review_two) { FactoryGirl.create(:review, apartment: apartment, user: user) }

		it "has many reviews" do
			expect(user.reviews.count).to eq(2)
		end
	end
end