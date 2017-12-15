require 'test_helper'

class TedflixMailerTest < ActionMailer::TestCase
  def tedflix_update_preview
    TedflixMailer.sample_email(User.first)
  end
end
