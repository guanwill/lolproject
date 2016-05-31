class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def rune_index
    @rune_index = HTTParty.get "https://global.api.pvp.net/api/lol/static-data/oce/v1.2/rune?runeListData=all&api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
  end

  def search
    @summoner = HTTParty.get "https://oce.api.pvp.net/api/lol/oce/v1.4/summoner/by-name/#{params[:summonerName]}?api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
  end

  def masteries
    @masteries = HTTParty.get "https://oce.api.pvp.net/api/lol/oce/v1.4/summoner/#{params[:summonerID]}/masteries?api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
  end

  def runes
    @runes = HTTParty.get "https://oce.api.pvp.net/api/lol/oce/v1.4/summoner/#{params[:summonerID]}/runes?api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
  end

  def recent
    @recent = HTTParty.get "https://oce.api.pvp.net/api/lol/oce/v1.3/game/by-summoner/#{params[:summonerID]}/recent?api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
  end

  def queue
    @queue = HTTParty.get "https://oce.api.pvp.net/api/lol/oce/v1.3/stats/by-summoner/#{params[:summonerID]}/summary?api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
  end

  def league
    @league = HTTParty. get "https://oce.api.pvp.net/api/lol/oce/v2.5/league/by-summoner/#{params[:summonerID]}/entry?api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
  end
end
