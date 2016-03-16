class ReviewQuestion < ActiveRecord::Base
	has_many :answers
	has_many :reiews, :through => :answers
end