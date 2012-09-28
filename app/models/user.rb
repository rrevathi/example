class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #:token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
#validates :lastname,:firstname,:presence => true

  # Setup accessible (or protected) attributes for your model	
  attr_accessible :email, :password, :password_confirmation, :remember_me, :lastname, :firstname, :gender, :term

 belongs_to :hospital
 belongs_to :doctor
validates :email, :presence => true, :uniqueness => true

end





=begin
  after_create :welcome_email 
 def welcome_email
  UserMailer.welcome_email(self).deliver
end
  #  def send_welcome_email
   #   UserMailer.deliver_welcome_email(self)
   #end
 UserMailer.welcome_email(self).deliver
=end