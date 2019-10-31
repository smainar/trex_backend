class UserMailer < ApplicationMailer

  def emergency_email(user)

    map = StaticMapService.new(user)
    @map = map.get_map
    @user = user

    mail(to: "wnt925@gmail.com", subject: "#{@user.name} called for help", attachments:attachments.inline["#{@map}"] )
    end
  end
