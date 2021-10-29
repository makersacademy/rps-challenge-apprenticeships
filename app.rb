require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
enable :sessions
  
  get '/' do
    erb :index
  end

  post '/named_player' do 
    session[:player_name] = params[:player_name]
    redirect '/registered'
  end 
  
  get '/registered' do
    @player_name = session[:player_name]
    erb :registered
  end 

  get '/play_game' do
    @player_name = session[:player_name] 
    erb :play_game
  end

  run! if app_file == $0
end
