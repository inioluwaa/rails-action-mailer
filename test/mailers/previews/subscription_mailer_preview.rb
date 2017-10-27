# Preview all emails at http://localhost:3000/rails/mailers/subscription_mailer
class SubscriptionMailerPreview < ActionMailer::Preview
  def send_mail_preview
    SubscriptionMailer.send_email(User.second)
  end
end
