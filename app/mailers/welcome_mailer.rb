class WelcomeMailer < ApplicationMailer
	
	default from: "hi@donedeal.co"
	
	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Welcome, #{@user.name}")
	end
end
