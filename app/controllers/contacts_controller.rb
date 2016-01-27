class ContactsController < ApplicationController
  def create
    p params
    UserMailer.contact_mail(params).deliver_later
    redirect_to "/"
  end
end
