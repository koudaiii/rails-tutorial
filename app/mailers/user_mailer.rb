# Notification
class UserMailer < ApplicationMailer
  default from: 'notification@example.com'

  def follow_notification(followed_user, user)
    @user = user
    @followed_user = followed_user
    email_with_name = %("#{user.name}" <#{user.email}>)
    @url  = 'http://localhost:3000'

    mail(to: email_with_name,
         subject: 'followed!!') do |format|
           format.html { render 'followed' }
           format.text { render text: 'followed' }
         end
  end

  def password_reset(user)
    @user = user
    mail(to: @user.email, subject: 'Password Reset') do |format|
     format.html { render 'password_reset' }
     format.text { render 'password_reset' }
    end
  end

end
