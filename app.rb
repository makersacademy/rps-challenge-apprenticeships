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
    Game.create(player1, player2, false)
    redirect '/game'
  end

  post '/single_player' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new("AI")
    Game.create(player1, player2, true)
    redirect '/game'
  end

  get '/game' do
    @game = Game.instance
    @player_1_name = @game.players[0].name
    @player_2_name = @game.players[1].name
    @single_player = @game.single_player
    erb :game
  end

  post '/submit_moves' do
    if Game.instance.single_player
      # Tried using .sample didn't want to work idk why...
      options = ["rock", "scissors", "paper"]
      session[:p2move] = options[rand(0..2)]
    else
      session[:p2move] = params[:p2move]
    end
    session[:p1move] = params[:p1move]
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
