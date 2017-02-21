# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['cxPckZzaRJeD_vjCW2igMQ'],
  :password => ENV['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'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}
