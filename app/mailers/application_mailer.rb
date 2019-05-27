class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@camp-scheduler.heroku.com'
  layout 'mailer'
end
