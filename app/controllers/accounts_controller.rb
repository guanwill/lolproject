class AccountsController < ApplicationController
  def index
  end

  def create
    @account = Account.create(account_params)
    if @account.valid?
      redirect_to accounts_path  #redirects to accounts#index if creation is successful
    else
      redirect_to new_account_path, :flash => {:errors => @account.errors.full_messages.join(', ')}  #redirects back to the form if there are errors in the sign up, does not pass validation
    end
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
    params.required(:account).permit(:name, :lol_username, :state, :fav_champion, :fav_position, :fav_gamemode, :fav_item)
  end

end
