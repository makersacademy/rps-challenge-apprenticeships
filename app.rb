require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    Game.create(player1, player2)
    redirect '/game'
  end

  get '/game' do
    @game = Game.instance
    @player_1_name = @game.players[0].name
    @player_2_name = @game.players[1].name
    erb :game
  end

  post '/submit_moves' do
    session[:p1move] = params[:p1move]
    session[:p2move] = params[:p2move]
    redirect '/results'
  end

  get '/results' do
    @p1move = session[:p1move]
    @p2move = session[:p2move]
    @result = Game.instance.check_winner(@p1move, @p2move)
    erb :results
  end

  run! if app_file == $0
end
