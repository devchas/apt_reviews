class ApartmentsController < ApplicationController

	# GET /apartments
	def index
		@apartments = Apartment.all
	end

	# GET/apartments/1
	def show
		@apartment = Apartment.find(params[:id])
		@questions = Review_question.all

		reviews = @apartment.reviews.collect
		@answers = reviews.each.collect { |review| review.answers }

		@topics = ['bathroom', 'neighborhood', 'building and management']
	end

end