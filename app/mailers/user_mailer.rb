class UserMailer < ApplicationMailer
  default from: ENV["MY_EMAIL"]

  def contact_mail(params)
    p "*" * 50
    p params
    @name = params[:name]
    @message = params[:message]
    @from = params[:email]
    @subject = params[:subject]
    p ENV["MY_EMAIL"]
    mail(cc:params[:email], to: ENV["MY_EMAIL"], subject: params[:subject])
  end
end
