require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer_player'
require './lib/rules'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = ComputerPlayer.new(Rules.new)
    @game = Game.create(player_1, player_2, Rules.new)
    redirect'/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/make-move' do
    @game.player_1_move(params[:move].to_sym)
    redirect '/confirm'
  end

  get '/confirm' do
    @move = @game.player1_move
    erb :confirm
  end

  post '/computer_turn' do
    @game.player_2_move
    redirect '/results'
  end

  get '/results' do
    p @game.player1_move
    p @game.player2_move
    p @game.result(@game.player1_move, @game.player2_move)
    erb @game.result(@game.player1_move, @game.player2_move)
  end

  run! if app_file == $0
end
