require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  post '/choice' do
    redirect '/result'
  end

  get '/result' do
    @player_1 = $player_1
    @game = Game.new(@player_1)
    @result = @game.determine_winner(params[:choice])
    erb :result
  end
  run! if app_file == $0
end
