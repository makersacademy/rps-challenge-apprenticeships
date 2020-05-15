require 'sinatra/base'
require './lib/player'
require './lib/player_choice'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do 
    @player = $player
    erb :play
  end 

  post '/choice' do
    choice = PlayerChoice.new(params[:rps])
    player = $player
    $game = Game.new(player,choice)
    redirect '/result'
  end

  get '/result' do 
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
