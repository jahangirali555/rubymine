require 'test_helper'

class MymailTest < ActionMailer::TestCase
  test "jkmail" do
    mail = Mymail.jkmail
    assert_equal "Jkmail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
