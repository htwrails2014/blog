# Preview all emails at http://localhost:3000/rails/mailers/comment_notifications
class CommentNotificationsPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/comment_notifications/new_comment
  def new_comment
    CommentNotifications.new_comment
  end

end
