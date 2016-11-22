require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "send_login_credentials" do
    mail = Notification.send_login_credentials
    assert_equal "Send login credentials", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
