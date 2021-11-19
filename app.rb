require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  require 'sinatra/reloader' if development?
  require_relative 'model/players'
  require_relative 'model/game'
  require_relative 'model/game_multiplayer'

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
    $player1 = params[:player1_name]
    $player2 = params[:player2_name]
    $players = Players.new(players)
    $game = Multiplayer.new($player1, $player2)

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

  post '/multiplayer_rock' do 
    if $game.currentplayer == $player1
      $player1_move = "Rock"
    else 
      $player2_move = "Rock"
      $result = $game.win_or_lose($player1_move, $player2_move)
      $game.switchturn
      redirect '/endgame'
    end  
    $game.switchturn
    erb :game 
  end 

  post '/multiplayer_scissors' do 
    if $game.currentplayer == $player1
      $player1_move = "Scissors"
    else 
      $player2_move = "Scissors"
      $result = $game.win_or_lose($player1_move, $player2_move)
      $game.switchturn
      redirect '/endgame'
    end  
    $game.switchturn
    erb :game 
  end 

  post '/multiplayer_paper' do 
    if $game.currentplayer == $player1
      $player1_move = "Paper"
    else 
      $player2_move = "Paper"
      $result = $game.win_or_lose($player1_move, $player2_move)
      $game.switchturn
      redirect '/endgame'
    end  
    $game.switchturn
    erb :game 
  end 

  get '/endgame' do 
    erb :endgame
  end 

  get '/anothergame' do 
    erb :game
  end

  run! if app_file == $0

end
