class ApplicationMailer < ActionMailer::Base
  default from: 'Tedflix <noreply@myflix.stream>'
  layout 'tedflix_mailer'
end
