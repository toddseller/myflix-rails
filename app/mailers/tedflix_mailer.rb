class TedflixMailer < ActionMailer::Base
  default from: 'Tedflix <noreply@myflix.stream>'
  layout 'mailer'

  def weekly_update(fn, email)
    @first_name = fn
    @email = email
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} we just added some shows you may like")
  end
end
