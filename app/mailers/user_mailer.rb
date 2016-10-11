class UserMailer < ApplicationMailer
  default from: ENV["MY_EMAIL"]

  def contact_mail(params)
    @name = params[:name]
    @message = params[:message]
    @from = params[:email]
    @subject = params[:subject]
    mail(cc:params[:email], to: ENV["MY_EMAIL"], subject: params[:subject])
  end
end
