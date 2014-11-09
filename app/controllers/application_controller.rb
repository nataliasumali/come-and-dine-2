class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    # before_filter :authorize :except => :index, :show
    # before_filter :authorize


  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user


  # Mer comment this part below out
  # def logged_in?
  # 	current_user != nil
  # end

  def authorize
    #Mer commented this stuff below out so we can try and get limited access working
  	# unless logged_in
  	# 	redirect_to blogposts_path
  	# end

    #Mer added this stuff below
    redirect_to login_path, alert: "Not authorized" if current_user.nil?
  end
  # helper_method :require_login

end
