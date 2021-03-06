class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= Account.find(session[:account_id]) if session[:account_id]
  end
  helper_method :current_user

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def authenticate
    redirect_to login_path unless logged_in?
  end

  # def notifications
  #   @playerid = current_user.id
  # end

end
