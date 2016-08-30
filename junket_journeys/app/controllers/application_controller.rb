class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :form_error
 
   def index
   end
 
 private
     
   def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end
 
   def logged_in?
    !!current_user
   end

   # def form_error
   #  if !flash[:error].nil? && !flash[:error].empty? 
   #    flash[:error].each do |message|
   #      message
   #    end
   #  end
   # end
end