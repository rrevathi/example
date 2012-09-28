class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user1
  
  private
  def current_user1
    @current_user1 ||= User2.find(session[:user_id]) if session[:user_id]
  end
  
  def after_sign_in_path_for(resource_or_scope)
    new_doctor_path
  end
end
