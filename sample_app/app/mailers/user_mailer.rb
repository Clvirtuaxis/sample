class UserMailer < ApplicationMailer
    default from: "caroline.lachance@virtuaxis.com"
    
    def contact_form(email, first_name, last_name, question)
        @question = message
        mail(from: email,
             to: "sylverblaze2@outlook.com",
             subject: "Message received from #{first_name} #{last_name}")
    end
    
    def welcome(user)
        @appname = "Virtuaxis"
        mail(to: "user.email",
             subject: "Welcome to #{@appname}!")
    end
    
    def received
        @first_name = params[:first_name]
        @last_name = params[:last_name]
        @email = params[:email]
        @message = params[:message]
        UserMailer.contact_form(@email, @first_name, @last_name, @question).deliver_now
    end
    
end
