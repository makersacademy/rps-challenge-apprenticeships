require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader
  # end
  enable :sessions

  get '/' do
    erb :index
  end  

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end  

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/weapon' do
    session[:choice] = params[:choice]
    redirect '/display-weapon'
  end

  get '/display-weapon' do
    @player_name = session[:player_name]
    @choice = session[:choice]
    erb :display_weapon
  end

  run! if app_file == $0
end
