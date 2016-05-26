class AccountsController < ApplicationController
  def index
  end

  def create
    @account = Account.create(account_params)
    if @account.save
      session[:account_id] = @account.id  #must create a session for user to use where thet are in. database only exists while user is logged in and thats it
      redirect_to root_path  #when user creates an account, we auto log them into a 'session' and take them to the root path /homepage
    else
      redirect_to new_account_path, :flash => {:errors => @account.errors.full_messages.join(', ')}  #if user fails to create new acc, sends them back to new uesr form
    end

    # if @account.valid?
    #   redirect_to accounts_path  #redirects to accounts#index if creation is successful
    # else
    #   redirect_to new_account_path, :flash => {:errors => @account.errors.full_messages.join(', ')}  #redirects back to the form if there are errors in the sign up, does not pass validation
    # end
  end

  def new
    @account = Account.new
  end

  def edit
    @account = Account.find(params[:id])
  end

  def show
    @account = Account.find(params[:id])   #we declare global variable here so we can use it in our show.html.erb. here we grab the account id, and in show.html.erb, we will decide what info to display
  end

  def update
    @account = Account.find(params[:id])
    @account.lol_username = params[:account][:lol_username]
    @account.email = params[:account][:email]
    @account.password = params[:account][:password]
    @account.password_confirmation = params[:account][:password_confirmation]
    @account.state = params[:account][:state]
    @account.fav_champion = params[:account][:fav_champion]
    @account.fav_position = params[:account][:fav_position]
    @account.fav_gamemode = params[:account][:fav_gamemode]
    @account.fav_item = params[:account][:fav_item]
    @account.save
    # @account = Account.update(account_params)
    if @account.valid?
      redirect_to accounts_path  #redirects to accounts#index if creation is successful
    else
      redirect_to edit_account_path, :flash => {:errors => @account.errors.full_messages.join(', ')}  #redirects back to the form if there are errors in the sign up, does not pass validation
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy   #when cat gets deleted, where do we then want to redirect the user
    redirect_to root_path
  end

  def account_params
    params.required(:account).permit(:name, :lol_username, :email, :password, :password_confirmation, :state, :fav_champion, :fav_position, :fav_gamemode, :fav_item)
  end

end
