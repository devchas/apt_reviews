class Review < ActiveRecord::Base
	belongs_to :apartment
	belongs_to :user
	has_many :answers
end