class UserMailer < ApplicationMailer
	default from: "Everpresent Team <no-reply@everpresent.io>"

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'Welcome to Everpresent')
	end
end
