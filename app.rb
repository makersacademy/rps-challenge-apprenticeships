require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
class RockPaperScissors < Sinatra::Base



  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/player1pick' do
    @player = $game.player1
    erb(:pick)
  end

  get '/player2pick' do
    @player = $game.player2
    erb(:pick)
  end

  run! if app_file == $0
end
