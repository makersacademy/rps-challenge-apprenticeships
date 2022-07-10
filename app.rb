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
    @move = params["move"]#store player move
    p @move
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end


  # post '/' do
  #   @player_name = params["name"]
  #   @player_move = params["move"]
  #   p params
  #   p @player_move
  #   erb(:index)
  # end

  run! if app_file == $0
end