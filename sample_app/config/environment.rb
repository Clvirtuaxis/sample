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
