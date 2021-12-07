require "sinatra/base"
# require "sinatra/reloader" if development?

class RockPaperScissors < Sinatra::Base
  # configure :development do
  # register Sinatra::Reloader
  # # end
  # enable :sessions

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

  post "/choice" do
    session[:choice] = params[:choice]
    redirect "/winner"
  end

  get "/winner" do
    @winner = session[:winner]
    erb :winner
  end

  run! if app_file == $0
end
