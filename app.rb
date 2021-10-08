require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/test" do
    "test page"
  end

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:player_1] = params[:player_1]
    redirect "/play"
  end

  get "/play" do
    @player_1 = session[:player_1]
    @selection = session[:selection]
    erb(:play)
  end

  post "/play" do
    session[:selection] = params[:selection]
    redirect "/play"
  end

  run! if app_file == $0
end
