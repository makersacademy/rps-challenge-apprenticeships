require_relative './lib/player'
require_relative './lib/game'
require 'sinatra/base'
# require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader
  # end
  enable :sessions

  get '/test' do
    'test page'
  end
  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:login_box])
    $player_2 = Player.new("Computer")
    $player_2.make_choice(Player::CHOICES[0])
    redirect '/enter_game'
  end

  get '/enter_game' do
    @player1 = $player_1
    $game = Game.new(@player1, $player_2)
    @game = $game
    erb :play
  end

  post '/rock' do
    $player_1.make_choice(Player::CHOICES[0])
    redirect '/play'
  end
  post '/paper' do
    $player_1.make_choice(Player::CHOICES[1])
    redirect '/play'
  end
  post '/scissors' do
    $player_1.make_choice(Player::CHOICES[2])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player1 = $player_1
    @player2 = $player_2
    @game.submit_choice
    @game.received_player_2_choice
    erb :results
  end

  post '/play_again' do
    redirect '/enter_game'
  end

  run! if app_file == $0
end
