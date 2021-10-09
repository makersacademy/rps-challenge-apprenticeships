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
    erb :index
  end

  post "/name" do
    @player1 = params[:player1_name]
    erb :play
  end

  run! if app_file == $0
end
