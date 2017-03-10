class UserMailer < ApplicationMailer
    default from: "caroline.lachance@virtuaxis.com"
    
    def contact_form(email, first_name, last_name, question)
        @question = message
        mail(from: email,
             to: "caroline.lachance@virtuaxis.com",
             subject: "Message received from #{first_name} #{last_name}")
    end
    
    def welcome(user)
        @appname = "Virtuaxis"
        mail(to: "user.email",
             subject: "Welcome to #{@appname}!")
    end
end
