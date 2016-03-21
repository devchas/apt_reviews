class ReviewQuestion < ActiveRecord::Base
	has_many :answers
end