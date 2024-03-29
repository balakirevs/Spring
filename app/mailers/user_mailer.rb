#!/bin/env ruby
# encoding: utf-8
class UserMailer < ActionMailer::Base
  default from: "vesna@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Подтверждение регистрации"
  end
end
