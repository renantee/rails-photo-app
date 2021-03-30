# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Sending email using Mailtrap
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.mailtrap.io',
  :port => '2525',
  :authentication => :cram_md5,
  :user_name => Rails.application.credentials.mailtrap[:user_name],
  :password => Rails.application.credentials.mailtrap[:password],
  :domain => 'smtp.mailtrap.io'
}
