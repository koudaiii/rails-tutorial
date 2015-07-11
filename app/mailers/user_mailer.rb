# Notification
class UserMailer < ApplicationMailer
  default from: 'notification@example.com'

  def follow_notificaton(current_user, user)
    @user = user
    @current_user = current_user
    email_with_name = %("#{user.name}" <#{user.email}>)
    @url  = 'http://localhost:3000'

    mail(to: email_with_name,
         subject: 'Welcom to My  Awesome Site') do |format|
           format.html { render 'followed' }
           format.text { render text: 'followed' }
         end
  end
end
