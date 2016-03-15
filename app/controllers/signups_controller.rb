class SignupsController < ApplicationController
	
	# GET /products
	def index
		@signups = Signup.all
	end

	# GET /signsups/new
	def new
		@signup = Signup.new
	end

	# POST /singups
	def create
		@signup = Signup.new(signup_params)
	
		respond_to do |format|
			if @signup.save
				SignupMailer.new_user_email(@signup).deliver
				format.html { redirect_to confirm_url }
				# format.json { }
			else
				format.html { render :new }
			end
		end
	end

	private
	  # Never trust parameters from the scary internet, only allow the white list through.
	  def signup_params
	    params.require(:signup).permit(:name, :email, :street, :apt_num, :city, :state, :zip_code, :rent_or_buy)
	  end
end