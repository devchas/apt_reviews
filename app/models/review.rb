class Review < ActiveRecord::Base
	belongs_to :apartment
	belongs_to :user
	has_many :answers
	has_many :review_questions, :through => :answers

	validates :overal_rating, presence: true

	def create_answers
		Question.all.each { |question| Answer.new_answer(id, question.id) }
	end

end