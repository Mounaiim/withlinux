class Contact < ActiveRecord::Base
    # in my contacts table I already said that I want to record those attributes so rails does not require me to rewrite them in the class
    #this the blueprint for our contacts basically (just an extensive explanation lololol)
    #name 
    #email
    #comment
end




#the model file contains the blue print of each of our objects essentially every information captured by the app like users info (name, email, comments)
#we dont have to write it the attributes here because rails does it for us