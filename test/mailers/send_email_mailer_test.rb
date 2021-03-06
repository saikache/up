require 'test_helper'

class SendEmailMailerTest < ActionMailer::TestCase
  test "deliverForm" do
    mail = SendEmailMailer.deliverForm
    assert_equal "Deliverform", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
