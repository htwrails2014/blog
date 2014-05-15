require 'test_helper'

class CommentNotificationsTest < ActionMailer::TestCase
  test "new_comment" do
    comment = comments(:pauls_comment)
    mail = CommentNotifications.new_comment(comment)
    assert_equal "New comment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "A new comment has been submitted", mail.body.encoded
  end

end
