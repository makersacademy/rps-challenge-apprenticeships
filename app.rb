require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/test" do
    "test page"
  end

  get "/" do
    erb(:index)
  end

  post "/name" do
    @player_1 = params[:player_1]
  end

  # get "/play" do
  #   @player_1 = session[:player_1]
  #   @player_2 = session[:player_2]
  #   erb(:play)
  # end

  run! if app_file == $0
end
