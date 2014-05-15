class CommentNotifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_notifications.new_comment.subject
  #
  def new_comment(comment)
    @comment = comment

    mail to: "to@example.org"
  end
end
