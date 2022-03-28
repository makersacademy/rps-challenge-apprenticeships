require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/cpu_player'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/cpu' do
    erb :cpu
  end

  post '/name' do
    player_1 = Player.new(params[:player_name])
    player_2 = CpuPlayer.new('Steve, the RPS master,')
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choice' do
    $game.player_1.weapon=(params[:choice].downcase.to_sym)
    $game.player_2.choose
    if $game.tie?
      redirect '/tie' 
    else
      redirect '/result'
    end
  end

  get '/tie' do
    @game = $game
    erb :tie
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
