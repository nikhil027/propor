class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.send_login_credentials.subject
  #
  def send_login_credentials(user)
    @user = user

    mail to: "#{@user.email}" , subject: "Welcome to Propor"
  end
end
