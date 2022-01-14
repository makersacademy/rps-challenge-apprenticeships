require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/players' do
    p params
    @player_one = Player.new(params[:player_name])
    $game = Game.new(@player_one)
    redirect '/moves'
  end

  get '/moves' do
    @game = $game
    erb(:moves)
  end

  post '/choice' do
    p params
    $game.player_one.select_move(params[:select_move])
    $game.computer_move
    redirect 'result'
  end

  get '/result' do
    $game.outcome($game.player_one)
    erb(:result)
  end

  get '/play-again' do
    $game.player_one.reset_move
    redirect '/moves'
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
