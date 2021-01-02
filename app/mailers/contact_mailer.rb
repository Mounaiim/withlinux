# https://guides.rubyonrails.org/action_mailer_basics.html
class ContactMailer < ActionMailer::Base
    default to: '09hamim@gmail.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(form: email, subject: 'Contact Form Message')
    end
end
    