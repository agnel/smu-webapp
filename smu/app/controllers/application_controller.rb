class ApplicationController < ActionController::Base
	
=begin
Every Incoming Requests Process through this Controller

Method Names and its Uses:

can? : Checks if a User has access to a incoming request/response

=end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
	def can?(condition,level)
    if session[:user_level].blank?
      return false
    else
      if session[:user_level].send(condition, level)
        return true
      else
        return false
      end
    end
  end
	
end
