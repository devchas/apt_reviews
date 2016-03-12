class ReviewsController < ApplicationController

	# GET /reviews/1
	def show 
		@reviews = Review.find(params[:id])
	end

	# GET /reviews/new
	def new
		@review = Review.new
	end

	# POST /reviews
	def create
		@review = Review.new(review_params)

		respond_to do
			if @review.save
				format.html { redirect_to root_url }
			else
				format.html { render :new }
			end
		end
	end

	def review_params
		params.require(:review).permit(:title, :description, :overal_rating, :apartment_id)
	end

end