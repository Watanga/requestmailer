class UserMailer < ActionMailer::Base
  default from: "railsapptrial@gmail.com"

  def request_confirmation(message)
    @message = message
    mail to: message.email, subject: "Sign Up Confirmation"
  end
end
