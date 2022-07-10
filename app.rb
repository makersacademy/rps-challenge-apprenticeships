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
    p player
    $game = Game.new(player)
    redirect '/game'
  end

  get '/game' do
    erb(:game)
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