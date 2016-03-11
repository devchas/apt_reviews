class ApartmentsController < ApplicationController

	# GET /apartments
	def index
		@apartments = Apartment.all
	end

	# GET/apartments/1
	def show
		@apartment = Apartment.find(params[:id])
		@reviews = @apartment.reviews.all
	end
end