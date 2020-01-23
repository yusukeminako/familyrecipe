class ContactsController < ApplicationController
  def new
    @contacts = Contact.new
  end
  def create
    Contact.create(contact_params)
  end

  private
  def contact_params
    params.permit(:name, :tel, :mail, :content)
  end
end
