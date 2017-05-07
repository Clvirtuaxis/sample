class UserMailer < ApplicationMailer
  default from: "caroline.lachance@virtuaxis.com"
    
    def contact_form(email, first_name, last_name, question)
      @question = question
        mail(from: email,
          to: "caroline.lachance@virtuaxis.com",
          subject: "Message received from #{first_name} #{last_name}")
    end
    
    def welcome(user)
      @appname = "Virtuaxis"
      mail(from: "caroline.lachance@virtuaxis.com",
        to: "user.email",
        subject: "Welcome to #{@appname}!")
    end

    def successful_payment(user, product)
      @user = user
      @product = product
      mail(:to => "user.email",
        :subject => "Confirmation of payment #{product.name}")
  end

end
