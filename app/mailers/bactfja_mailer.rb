class BactfjaMailer < ActionMailer::Base
  default from: 'Bay Action Committee to Free Julian Assange <info@bayaction2freeassange.org>'
  layout 'mailer'

  def event_template(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} join us for World Press Freedom Day of Action")
  end
end

