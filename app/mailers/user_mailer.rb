class UserMailer < ApplicationMailer
  default from: 'saurabh.mainframe86@gmail.com'
  require 'mail' 
  
  def welcome_email(user)
    @user = user
    @url  = '/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
