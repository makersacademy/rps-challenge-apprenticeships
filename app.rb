require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb :play
  end

  get '/rock' do 
    player_weapon = 'rock'
    game = Game.new
    @winner = game.play(player_weapon)
    erb :result
  end

  get '/paper' do
    player_weapon = 'paper'
    game = Game.new
    @winner = game.play(player_weapon)
    erb :result
  end

  get '/scissors' do
    player_weapon = 'scissors'
    game = Game.new
    @winner = game.play(player_weapon)
    erb :result
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  run! if app_file == $0
end
