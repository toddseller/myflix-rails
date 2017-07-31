class MyflixMailer < Devise::Mailer
  helper :application
  include Devise::Controllers::UrlHelpers
  default template_path: 'devise/mailer'

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later(wait: 1.minute)
  end

  def confirmation_instructions(record, token, opts={})
    headers["Custom-header"] = "Please Confirm Your Account"
    opts[:from] = 'MYFLIX <admin@myflix.stream>'
    opts[:reply_to] = 'MYFLIX <admin@myflix.stream>'
    opts[:subject] = "Please Confirm Your Account"
    super
  end

  def reset_password_instructions(record, token, opts={})
    headers["Custom-header"] = "Password Reset"
    opts[:from] = 'MYFLIX <admin@myflix.stream>'
    opts[:reply_to] = 'MYFLIX <admin@myflix.stream>'
    opts[:subject] = "Password Reset"
    super
  end
end
