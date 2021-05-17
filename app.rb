require 'sinatra/base'
require './lib/game'
require './lib/player'
class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/option' do
    $player = Player.new(params[:player_1_name])
    @player = $player
    erb :option
  end

  post '/play' do
    @player = $player
    @player.choice = params[:choice]
    @game = Game.new(@player)

    erb :play
  end

  get '/option' do
    @player = $player
    erb :option
  end

  # potential feature:
  # win and lose counter


  run! if app_file == $0
end
