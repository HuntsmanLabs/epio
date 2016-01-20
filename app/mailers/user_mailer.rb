class UserMailer < ApplicationMailer
	default from: "no-reply@everpresentapp.com"

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'Welcome to Everpresent')
	end
end
