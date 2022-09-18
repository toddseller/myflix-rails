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
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us this Saturday!")
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

  def event_8_24(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Stand 4 Julian & Chelsea!")
  end

  def event_9_28(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Solidarity Actions 4 Julian & Chelsea!")
  end

  def event_1_25_20(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us for a Global Day of Protest!")
  end

  def event_2_10_20(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us for a lecture with Nozomi Hayase!")
  end

  def event_4_19_20(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us for an online panel featuring Nozomi Hayase!")
  end

  def event_7_3_20(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us for a Global Birthday Vigil")
  end

  def event_9_7_20(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us to Protest the Start of Julian Assange's Extradition Hearing")
  end

  def event_12_10_20(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us for a Human Rights Day Protest")
  end

  def event_12_10_12_11(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us for 3 Events in Support of Julian Assange!")
  end

  def event_12_17_20(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, A new South Bay Event on December 17th in support of H.Res. 1175 has been added!")
  end

  def event_1_4_21(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us in support of Julian Assange")
  end

  def event_1_4_21_reminder(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us in support of Julian Assange here and across the US")
  end

  def event_4_11_21(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, A Global Day of Protest in support of Julian Assange")
  end

  def event_4_11_21_online(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, New Online Zoom Event in Support of Julian Assange on Sunday, April 11th at 5:00PM PDT.")
  end

  def upcoming_events_and_news(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Here's an update on what's going on!")
  end

  def urgent_request(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, A Call to Action for All Julian Assange Supporters!")
  end

  def online_vigil(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join Us Christmas Eve for An Online Candlelight Vigil!")
  end

  def assangedefense(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Journalism is not a crime - War crimes are")
  end

  def breaking_news(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Breaking News - Julian's UK Appeal Denied!")
  end

  def urgent_request_and_press_release(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Press Release for Upcoming Protest!")
  end

  def urgent_volunteers(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @uuid = options[:uuid]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Volunteers are still needed!")
  end
end

