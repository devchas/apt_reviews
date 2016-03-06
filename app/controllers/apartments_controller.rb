class ApartmentsController < ApplicationController
	
	# GET /products
	def index
		@apartments = Apartment.all
	end

	# GET /apartments/new
	def new
		@apartment = Apartment.new
	end

	# POST /apartments
	def create
		@apartment = Apartment.new(apartment_params)

		respond_to do |format|
			if @apartment.save
				format.html { redirect_to root_url }
			else
				format.html { redirect_to root_url, notice: 'Did not work.' }
			end
		end
	end

	private
	  # Never trust parameters from the scary internet, only allow the white list through.
	  def apartment_params
	    params.require(:apartment).permit(:name, :email, :street, :apt_num, :city, :state, :zip_code, :rent_or_buy)
	  end
end