class UserMailer < ActionMailer::Base
  default :from => "bharkavib@gmail.com"
 
  def welcome_email(user1)
    @user1= user1
    @url  = "http://example.com/login"
#attachments['Ruby.pdf'] = File.read('/home/chilambarasan/Desktop/Ruby.pdf')
    mail(:to => user1.email, :subject => "Welcome")
  end


  #def contactby(contact)
    #   mail(:to=>contact[:to], :subject=>contact[:subject], :body=>contact[:message])
  #end
def contactby(contact)
       mail(:to=>contact[:to], :subject=>contact[:subject], :body=>contact[:message])
  end
end
