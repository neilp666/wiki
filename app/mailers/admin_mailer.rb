class AdminMailer < ActionMailer::Base
  default from: "no-reply@example.com"
  default to: 'neil@spark48.com'

  def mandrill_client
  	@mandrill_client ||= Mandrill::API.new MANDRILL_API_KEY
  end

  def new_user(user)
  	@user = user
  	mail(subject: "New User: #{user.email}")
  end


def new_article(article, user)
	template_name = "new-article"
	template_content = []
	message = {
		to: [{email: 'neil@spark48.com'}],
		subject: "New Article: #{article.title}",
	}

@mandrill_client.messages.send_template template template_article, template_content

end
end
