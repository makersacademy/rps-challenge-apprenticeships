require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/cpu'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    cpu = Cpu.new
    $game = Game.new(player, cpu)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/moves' do
    @game = $game
    @game.player_1.choose_move(params[:choice])
    redirect('/showdown')
  end

  get '/showdown' do
    @game = $game
    @winner = @game.winner
    erb :showdown
  end

  run! if app_file == $0
end
