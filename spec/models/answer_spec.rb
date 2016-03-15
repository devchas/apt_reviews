require 'rails_helper'

describe Answer, type: :model do
	let!(:apartment) { FactoryGirl.create(:apartment) }
	let!(:user) { FactoryGirl.create(:user) }
	let!(:review) { FactoryGirl.create(:review, apartment: apartment, user: user) }
	let!(:review_question) { FactoryGirl.create(:review_question) }

	describe "answer" do
		let!(:answer_one) { FactoryGirl.create(:answer, review: review, review_question: review_question) }
		let!(:answer_two) { FactoryGirl.create(:answer, review: review, review_question: review_question) }
	
		it "equals true or false" do
			expect(answer_one).to eq(true || false)
			expect(answer_two).to eq(true || false)
		end
	end
end