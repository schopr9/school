class UserMailer < ApplicationMailer
  default from: 'cbzextreme@gmail.com'
  require 'mail' 
  
  def welcome_email(user)
    @user = user
    @url  = '/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end


  def new_email(user)
    @user = user
  	mail = Mail.new do
          from     'cbzextreme@gmail.com'
          to       @user.email
          subject  'Here is the image you wanted'
          body     ('body my body')
          
        end

        mail.deliver!

   end     
end
