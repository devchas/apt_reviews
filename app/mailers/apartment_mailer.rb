class ApplicationMailer < ActionMailer::Base
	default from: ENV["GMUN"]
	layout 'mailer'	
end

class ApartmentMailer < ApplicationMailer

	def new_user_email(apartment)
		@apartment = ApartmentMailer
		mail(to: ENV["GMUN"], subject: 'New Know Thy Signup')
	end
end