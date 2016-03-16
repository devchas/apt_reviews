require 'rails_helper'

describe Answer, type: :model do
	let!(:apartment) { FactoryGirl.create(:apartment) }
	let!(:user) { FactoryGirl.create(:user) }
	let!(:review) { FactoryGirl.create(:review, apartment: apartment, user: user) }
	let!(:review_question) { FactoryGirl.create(:review_question) }

	describe "answer" do
		let!(:answer_one) { FactoryGirl.create(:answer, review: review, review_question_id: review_question.id) }
		let!(:answer_two) { FactoryGirl.create(:answer, review: review, review_question_id: review_question.id) }
	
		it "equals true or false" do
			expect(answer_one.response).to be_in([true, false])
			expect(answer_two.response).to be_in([true, false])
		end
	end
end