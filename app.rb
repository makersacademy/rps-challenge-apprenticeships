require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    $game = Game.new
    erb :play
  end

  get '/result' do
    @game = $game
    @game.choose(params[:weapon])
    erb :result
  end


   run! if app_file == $0
end
