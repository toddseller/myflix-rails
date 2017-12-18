class TedflixMailer < ActionMailer::Base
  default from: 'Tedflix <noreply@tedroddy.net>'
  layout 'mailer'

  def weekly_update(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} we just added some shows you may like")
  end

  def star_wars(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} return to a galaxy far, far away...")
  end

  def informational(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} TEDLIX IS DOWN!?!")
  end

  def back_online(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} We're Back!")
  end
end
