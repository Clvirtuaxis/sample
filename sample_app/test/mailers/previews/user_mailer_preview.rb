# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def contact_form
        UserMailer.contact_form("tito@dcar.com", "tito", "Ramsey", "What's app!")
    end
end