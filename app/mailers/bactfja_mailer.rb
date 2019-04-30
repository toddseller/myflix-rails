class BactfjaMailer < ActionMailer::Base
  default from: 'Bay Action Committee to Free Julian Assange <info@bayaction2freeassange.org>'
  layout 'mailer'

  def event(options = {})
    @name = options[:full_name]
    @first_name = options[:first_name]
    @email = options[:email]
    @user_id = options[:user_id]
    mail(to: "#{@name} <#{@email}>", subject: "#{@first_name}, Join us for World Press Freedom Day of Action")
  end
end

