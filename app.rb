require "sinatra/base"
# require "sinatra/reloader" if development?

class RockPaperScissors < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader
  # end
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get "/play" do
    @player = session[:player_name]
    erb :play
  end

  run! if app_file == $0
end
