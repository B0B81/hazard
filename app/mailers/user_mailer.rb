class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(email)
    @greeting = "Hi"

    mail to: email, subject: "Willkommen zur e-rp Gefahrstoff-App"
  end
end
