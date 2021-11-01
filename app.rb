require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/named_player' do 
    $player = Player.new(params[:player])
    redirect '/registered'
  end 
  
  get '/registered' do
    @player_name = $player.name
    erb :registered
  end 

  get '/play_game' do
    erb :play_game
  end

  # partial solution, not completed 
  post '/players_choice' do 
    $player = Player.new(params[:player])
    redirect '/players_choice'
  end 

  get '/players_choice' do
    # @player_name.play_game
    @player_selection = $player
    erb :players_choice
  end


  run! if app_file == $0
end

