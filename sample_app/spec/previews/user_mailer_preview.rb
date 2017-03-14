# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def contact_form
        UserMailer.contact_form(@email, @first_name, @last_name, @question)
    end
    
    def welcome
        UserMailer.welcome(@appname)
    end

end
