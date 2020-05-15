require 'sinatra/base'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  post '/move' do
    $move=params[:move]
    redirect '/who_won'
  end

  get '/who_won' do
    @move = $move
    erb :your_move
  end


  run! if app_file == $0
end
