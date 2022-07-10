require 'sinatra/base'
require './lib/player'
require './lib/game'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player-greet' do
    player = Player.new(params["player_name"]) #captures player name entered on index page form
    $game = Game.new(player) #creates instance of game class with the player
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end

  post '/find-winner' do
    move = params["move"]#store player move
    $game.assign_move(move)
    p move
    redirect '/result'
  end

  get '/result' do
    binding.irb
    erb(:result)
  end

  run! if app_file == $0
end