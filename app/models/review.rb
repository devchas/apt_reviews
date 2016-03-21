class Review < ActiveRecord::Base
	belongs_to :apartment
	belongs_to :user
	has_many :answers
	has_many :review_questions, :through => :answers

	validates :overal_rating, presence: true

end