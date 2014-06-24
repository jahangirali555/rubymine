class Mymail < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mymail.jkmail.subject
  #
  def jkmail(invite)
     @invite = invite

    @greeting = "We'll add our Greeting message here"
    @link = "http://localhost:3000/logins/sign_up?company_name="+ @invite.company_name

    mail to: @invite.email, subject: "Please don not reply to this email!"
  end
end
