

class ContactsController < ApplicationController


  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = "MESSAGE ENVOYE! Vous recevrez une réponse rapidement."
    else
      flash.now[:error] = "IMPOSSIBLE D'ENVOYER LE MESSAGE"
      render :new
    end
  end




end
