require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb(:index)
  end

  get "/game" do
    @player_name = params[:player_name]
    erb(:game)
  end
end
