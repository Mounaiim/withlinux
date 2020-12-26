class ContactsController < ApplicationController
    #method called new refers to the page called contacts  
  def new  
    @contact = Contact.new
  end
  
  def create 
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: "Message successfuly sent. "
    else
      redirect_to new_contact_path, notice: "Message Aborted"
    end
end    
    private 
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end
    
end
    
