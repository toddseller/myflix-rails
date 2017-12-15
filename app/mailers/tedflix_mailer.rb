class TedflixMailer < ApplicationMailer::Base
  default from: 'Tedflix <noreply@myflix.stream>'
  layout 'tedflix_mailer'

  def weekly_update(fn, email)
    mail(to: "#{fn} <#{email}>", subject: "#{fn} we just added some shows you may like")
  end
end
