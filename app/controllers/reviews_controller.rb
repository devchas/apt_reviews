class ReviewsController < ApplicationController

	# GET /reviews/1
	def show 
		@reviews = Review.find(params[:id])
	end

	# GET /reviews/new
	def new
		@review = Review.new
		@questions = ReviewQuestion.all
	end

	# POST /reviews
	def create
		puts params
		# review_stuff = {
		# 	name: params[:name],
		# 	address: params[:address]
		# }

		# answer_stuff = {
		# 	answer: :this
		# 	index: :that
		# }

		# @review = Review.new({name: params[:name]})

		@review = Review.new(review_params)

		respond_to do |format|
			if @review.save
				format.html { redirect_to apartment_url @review.apartment_id }
			else
				format.html { render :new }
			end
		end
	end

	def review_params
		params.require(:review).permit(:title, :description, :overal_rating, :apartment_id)
	end

end