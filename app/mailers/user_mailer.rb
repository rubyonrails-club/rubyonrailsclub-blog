# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: "no-reply@app.com"

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: "Bem-vindo ao site RubyonRails.club!")
  end
end
