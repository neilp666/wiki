class AdminMailer < ActionMailer::Base
  default from: "no-reply@example.com"
  default to: 'neil@spark48.com'

  def new_user(user)
  	@user = user
  	mail(subject: "New User: #{user.email}")
  end
end
