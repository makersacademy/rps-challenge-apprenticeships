require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/moves' do
    @game = $game
    @game.player.choose_move(params[:choice])
    redirect('/showdown')
  end

  get '/showdown' do
    @game = $game
  end

  run! if app_file == $0
end
