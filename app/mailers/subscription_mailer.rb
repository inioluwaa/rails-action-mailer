class SubscriptionMailer < ApplicationMailer

  default from: "inioluwaakinleye@gmail.com"
  def send_email(email)
    mail(to: email, subject: 'Sample Mail')
  end
end
