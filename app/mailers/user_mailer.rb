class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def santas_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Ваш Тайный Санта!')
  end
end
