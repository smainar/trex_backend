class UserMailer < ApplicationMailer
  default from: "wnt925@gmail.com"

  def emergency_email
    mail(to: "wnt925@gmail.com", subject: "I called for help", body: "A")

  end

end
