class UserMailer < ActionMailer::Base
  default from: "serge@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.greetings.subject
  #
  def welcome_user(user)
    @user = user
    @url  = 'http://activity-to-do-app.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to Mailing App Demo!!!!')
  end
end

    # UserMailer.welcome_user(user).deliver()
