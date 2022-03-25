require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_name])
    player_2 = Player.new('cpu')
    player_2.weapon=(:scissors)
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choice' do
    $game.player_1.weapon=(params[:choice].to_sym)
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end
  
  run! if app_file == $0
end
