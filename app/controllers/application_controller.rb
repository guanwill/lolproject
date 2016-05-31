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

  def post_to_runes
    @rune_index = HTTParty.get "https://global.api.pvp.net/api/lol/static-data/oce/v1.2/rune?runeListData=all&api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"

    while i < @runes["data"].length
      rune = Runes_list.new
      rune.rune_id = @rune_index["data"][i]["id"]
      rune.rune_name = @rune_index["data"][i]["name"]
      rune.rune_description = @rune_index["data"][i]["description"]
      rune.rune_image = @rune_index["data"][i]["image"]["sprite"]
      rune.save
      i+=1
    end
  end
  helper_method :post_to_runes


end
