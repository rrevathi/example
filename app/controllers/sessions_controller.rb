class SessionsController < ApplicationController
	def home
	end
	
	def aboutus
	end
	
 	def term
	end
	
	
	def contactby
	end

	def delivery_msg
	  @contact=params[:mail]
	  UserMailer.contactby(@contact).deliver
  	end
	
	def create
	auth = request.env["omniauth.auth"]
    	user = User2.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User2.create_with_omniauth(auth)
    	session[:user_id] = user.id
    	redirect_to root_url, :notice => "Signed in!"
	end

	def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "Signed out!"
	end
end
