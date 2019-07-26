class BactfjaMailer < ActionMailer::Base
  default from: 'Bay Action Committee to Free Julian Assange <info@bayaction2freeassange.org>'
  layout 'mailer'

  def event(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us on June 12th!")
  end

  def event_6_3(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, NEW EVENT ON JUNE 3rd!")
  end

  def event_6_12(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Don't forget to join us on June 12th!")
  end

  def event_6_30(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us for the S.F. Pride Parade on June 30th!")
  end

  def upcoming_events(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Don't miss out on these upcoming events around the Bay!")
  end

  def informational_announcement(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "Technical difficulties.")
  end

  def event_7_31(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Rally against U.S. Extradition of Julian on July 31st!")
  end
end

