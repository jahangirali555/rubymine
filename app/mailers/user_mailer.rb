class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def send_signup_email(user)
    @user = user      
      mail( to: 'jahangirali555@gmail.com',
    subject: 'Thanks for signing up for our amazing app' )
  
   
    end
end
