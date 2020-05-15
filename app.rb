require 'sinatra/base'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = Player.new(params[:player_name])
    @computer = Computer.new
    $game = Game.new(@player_1, @computer)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1.name
    erb :play
  end

  post '/move' do
    p params[:move]
    $game.player_1.move = params[:move]
    redirect '/who_won'
  end

  get '/who_won' do
    @move = $game.player_1.move
    @winning = $game.winning
    erb :your_move
  end


  run! if app_file == $0
end
