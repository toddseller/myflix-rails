class TedflixMailer < ActionMailer::Base
  default from: 'Tedflix <noreply@tedroddy.net>'
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
end
