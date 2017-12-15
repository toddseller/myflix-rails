class TedflixMailer < ActionMailer::Base
  default from: 'Tedflix <noreply@myflix.stream>'
  layout 'mailer'

  def weekly_update(fn, email)
    mail(to: "#{fn} <#{email}>", subject: "#{fn} we just added some shows you may like")
  end
end
