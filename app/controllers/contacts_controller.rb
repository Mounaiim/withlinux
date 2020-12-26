class ContactsController < ApplicationController
    #method called new refers to the page called contacts  
  def new  
    @contact = Contact.new
    # this line is really just to create empty objects in the memory, even if a 100 people fill the contact form at the same time
  end
  
  # then here we take an empty object and it is get filled with the following method(create)
  def create 
    @contact = Contact.new(contact_params) #mass assignments #{name: 'asda', email: 'sdfsd', comments: 'dfsdsf'}
    if @contact.save
      redirect_to new_contact_path, notice: "Message successfuly sent. "
    else
      redirect_to new_contact_path, notice: "Message Aborted"
    end
end    
    private #protected method look it up/ and it is used internally/inside that file 
    def contact_params
      params.require(:contact).permit(:name, :email, :comments) #white list then allowing those attributes to be mass assigned
    end
    
end
    
