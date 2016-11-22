# Preview all emails at http://localhost:3000/rails/mailers/notification
class NotificationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification/send_login_credentials
  def send_login_credentials
    Notification.send_login_credentials
  end

end
