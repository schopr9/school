class UserMailer < ApplicationMailer
  default from: 'saurabh.mainframe86@gmail.com'
  require 'mail' 
  
  def welcome_email(user)
    @user = user
    @url  = '/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def new_email
  	mail = Mail.new do
          from     'saurabh.mainframe86@gmail.com'
          to       'schopra86@live.com'
          subject  'Here is the image you wanted'
          body     ('body my body')
          
        end

        mail.deliver!

   end     
end
