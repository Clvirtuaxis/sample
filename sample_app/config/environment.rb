# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['apikey'],
  :password => ENV['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'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}
