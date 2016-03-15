class Review < ActiveRecord::Base
	belongs_to :apartment
	belongs_to :user
	has_many :review_questions
end