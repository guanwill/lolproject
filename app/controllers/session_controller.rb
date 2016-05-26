class SessionController < ApplicationController

  def new
  end

  def create
    account = Account.where(:name => params[:username]).first  # :username is taking the input the user puts in the login form
    if account.present?&&account.authenticate(params[:password])
      session[:account_id] = account.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:account_id] = nil
    redirect_to root_path
  end

end
