class UserNotifier < ActionMailer::Base
  default from: "sureka@gmail.com"

  def send_signup_email(user)
    @user = user
@url = 'http://gmail.com/login'
attachments['images6.jpeg'] = File.read("/home/sureka/Desktop/rails/email/public/images6.jpeg")
    mail( to: @user.email, subject: 'Thanks for signing up for our amazing app' )

  end
end

