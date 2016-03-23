class ReviewsController < ApplicationController
	include ApplicationHelper
	before_action :authenticate_user!

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
		@review = Review.new(review_params)
		@questions = ReviewQuestion.all
	
		respond_to do |format|
			if @review.save
				@questions.each do |question|
					response = params[:response][question.id.to_s.to_sym]
					create_answer(question.id, @review.id, response)
				end
				format.html { redirect_to apartment_url @review.apartment_id }
			else
				format.html { render :new }
			end
		end
	end

	def review_params
		params.require(:review).permit(:title, :description, :overal_rating, :apartment_id, :user_id)
	end

	def create_answer(q_id, r_id, my_response)
		@answer = Answer.new(
			review_question_id: q_id,
			review_id: r_id,
			response: my_response)
		@answer.save
	end

end