# ApplicationMailer provides common settings and functionalities for other mailers.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
