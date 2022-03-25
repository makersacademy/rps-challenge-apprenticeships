require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/playerchoice' do
    @game = $game
    @game.player_choice(params[:choice])
    redirect '/result' 
  end

  get '/result' do
    @game = $game
    @player_choice = session[:choice]
    erb :result
  end

  run! if app_file == $0
end
