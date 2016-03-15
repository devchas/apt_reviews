class ApplicationMailer < ActionMailer::Base
	default from: ENV["GMUN"]
	layout 'mailer'	
end

class SignupMailer < ApplicationMailer

	def new_user_email(signup)
		@signup = signup
		mail(to: ENV["GMUN"], subject: 'New Know Thy Signup')
	end
end