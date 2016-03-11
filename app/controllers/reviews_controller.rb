class ReviewsController < ApplicationController

	# GET reviews/1
	def show 
		@review = Review.find(params[:id])
	end

	

end