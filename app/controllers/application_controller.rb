class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login

  private

  def current_user
    @current_user ||= User.find(session[:_id]) if session[:id]
  end
  helper_method :current_user

  def logged_in?
  	current_user != nil
  end

  def require_login
  	unless logged_in
  		redirect_to blogposts_path
  	end
  end

end
