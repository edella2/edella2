class ContactsController < ApplicationController
  def create
    p params
    redirect_to "/"
  end
end
