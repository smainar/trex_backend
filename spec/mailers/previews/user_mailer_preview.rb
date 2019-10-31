# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def emergency_email
  UserMailer.new.emergency_email(@user)
    end
  end
