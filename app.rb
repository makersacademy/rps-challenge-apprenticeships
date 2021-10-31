require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  require 'sinatra/reloader' if development?
  require_relative 'model/players'
  require_relative 'model/game'

  get '/' do
    $solo = true 
    $multiplayer = false
    erb :index
  end

  get '/register' do 
    erb :register
  end 

  post '/solo' do 
    $solo = true 
    $multiplayer = false
    erb :register
  end 

  post '/multiplayer' do 
    $solo = false 
    $multiplayer = true 
    erb :register
  end 

  get '/players' do 
    players = [params[:player1_name],params[:player2_name]]
    player1 = params[:player1_name]
    player2 = params[:player2_name]
    $players = Players.new(players)
    # @game = Game.create(player1, player2)
    erb :game
  end 

  get '/player' do 
    player = params[:player1_name]
    $player = Players.new(player)
    erb :game
  end 

  post '/rock' do 
    @player1_move = "Rock"
    opponent = Game.new
    @opponent_move = opponent.opponent
    @result = opponent.win_or_lose(@player1_move, @opponent_move)
    erb :game
  end 

  post '/paper' do 
    @player1_move = "Paper"
    opponent = Game.new
    @opponent_move = opponent.opponent
    @result = opponent.win_or_lose(@player1_move, @opponent_move)
    erb :game
  end 

  post '/scissors' do 
    @player1_move = "Scissors"
    opponent = Game.new
    @opponent_move = opponent.opponent
    @result = opponent.win_or_lose(@player1_move, @opponent_move)
    erb :game
  end 

  run! if app_file == $0

end
