class UserMailer < ApplicationMailer
  default from: "wnt925@gmail.com"

  def emercgency_email
    mail(to: "wnt925@gmail.com", subject: "I called for help", body: "A")

  end

end
