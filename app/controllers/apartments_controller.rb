class ApartmentsController < ApplicationController

	# GET /apartments
	def index
		@apartments = Apartment.all
	end

	# GET/apartments/1
	def show
		@apartment = Apartment.find(params[:id])
		@questions = ReviewQuestion.all
	end

end