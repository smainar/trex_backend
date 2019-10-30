class UserMailer < ApplicationMailer
  default from: "wnt925@gmail.com"

  def emergency_email(user)
    user.notifications_sent.each do |notification|

    mail(to: "wnt925@gmail.com", subject: "#{user.name} called for help", body: "#{notification.latitude} #{notification.longitude}")
  end
  end
end
