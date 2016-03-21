class Answer < ActiveRecord::Base
	belongs_to :review
	belongs_to :review_question

end