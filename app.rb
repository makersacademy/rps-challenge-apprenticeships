require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
enable :sessions
  
  get '/' do
    erb :index
  end

  post '/named_player' do 
    $player = Player.new(params[:player_name])
    redirect '/registered'
  end 
  
  get '/registered' do
    @player_name = $player.name
    erb :registered
  end 

  get '/play_game' do
    @player_name = $player.name
    erb :play_game
  end

  run! if app_file == $0
end
