require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_name])
    $game = RPSGame.new($player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/game-result' do
    @game = $game
    @game.player_choice(params[:player_option])
    redirect '/game_result'
  end

  get '/game-result' do
    @game = $game
    @game.com_choice
    erb :game_result
  end

  run! if app_file == $0
end