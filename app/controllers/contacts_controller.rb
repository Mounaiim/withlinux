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
      # this is how we grab the names from form fields in the next 4lines
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comments]
      ContactMailer.contact_email(name, email, body).deliver
      flash[:success] = "Message successfuly sent. "
      redirect_to new_contact_path
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end    
    private #protected method look it up/ and it is used internally/inside that file 
    def contact_params
      params.require(:contact).permit(:name, :email, :comments) #white list then allowing those attributes to be mass assigned
    end
    
end
    
