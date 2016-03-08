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
				ApartmentMailer.new_user_email(@apartment).deliver
					format.html { redirect_to confirm_url }
				# format.json { }
			else
				format.html { render :new }
			end
		end
	end

	private
	  # Never trust parameters from the scary internet, only allow the white list through.
	  def apartment_params
	    params.require(:apartment).permit(:name, :email, :street, :apt_num, :city, :state, :zip_code, :rent_or_buy)
	  end
end