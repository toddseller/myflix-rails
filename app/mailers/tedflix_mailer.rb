class TedflixMailer < ActionMailer::Base
  default from: 'Tedflix <noreply@tedroddy.net>'
  layout 'mailer'

  def weekly_update(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} we just added some shows you may like")
  end
end
