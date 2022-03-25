require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/names' do
    $player_one = Player.new(params[:player_one])
    redirect to('/play')
  end

  get '/play' do
    @player_one = $player_one
    erb :play
  end

  post '/result' do
    $player_one.choose(params)
    Game.run_vs_ai($player_one)
    erb :result
  end

  run! if app_file == $0
end
