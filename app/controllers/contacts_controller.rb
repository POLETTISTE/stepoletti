# frozen_string_literal: true

# Contacts
class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'MESSAGE ENVOYE!'
    else
      flash.now[:error] = "IMPOSSIBLE D'ENVOYER LE MESSAGE"
      render :new
    end
  end
end
