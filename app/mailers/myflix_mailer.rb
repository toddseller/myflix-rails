# class MyflixMailer < Devise::Mailer
#   helper :application
#   include Devise::Controllers::UrlHelpers
#   default template_path: 'devise/mailer'

#   def send_devise_notification(notification, *args)
#     devise_mailer.send(notification, self, *args).deliver_later(wait: 1.minute)
#   end

#   def confirmation_instructions(record, token, opts={})
#     headers["Custom-header"] = "Please Confirm Your Account"
#     opts[:from] = 'MYFLIX <admin@myflix.stream>'
#     opts[:reply_to] = 'MYFLIX <admin@myflix.stream>'
#     opts[:subject] = "Please Confirm Your Account"
#     super
#   end

#   def reset_password_instructions(record, token, opts={})
#     headers["Custom-header"] = "Password Reset"
#     opts[:from] = 'MYFLIX <admin@myflix.stream>'
#     opts[:reply_to] = 'MYFLIX <admin@myflix.stream>'
#     opts[:subject] = "Password Reset"
#     super
#   end

#   def no_service(options = {})
#     @first_name = options[:name]
#     @email = options[:email]
#     mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} TEDLIX IS DOWN!?!")
#   end  
# end
class MyflixMailer < ActionMailer::Base
  default from: 'Myflix <noreply@myflix.stream>'
  layout 'mailer'

  def for_you(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} we just added some shows you may like")
  end

  def no_service(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} TEDLIX IS DOWN!?!")
  end

  def back_online(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} We're Back!")
  end

  def now_on(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "Now on Tedflix")
  end

  def xmas(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name}, Spend Your Christmas with Tedflix")
  end

  def naughty(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name}, Get a little naughty with Tedflix")
  end

  def new_year(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name}, Scream in the New Year with Tedflix")
  end

  def review(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name}, Don't miss Tedflix's year in review!")
  end

  def termination(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name}, We've cancelled your service!")
  end

  def no_service(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name}, We have an important notice regarding your service!")
  end
end
