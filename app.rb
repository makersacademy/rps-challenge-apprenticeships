require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/two_player_game'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/game_mode' do
    mode = params[:mode]
    case mode
    when 'Single Player'
      redirect('/single_player')
    when 'Two Player'
      redirect('/two_player')
    when 'Rock, Paper, Scissor, Lizard, Spock'
      $extended = true
      redirect('/single_player')
    end
  end

  # Single Player
  get '/single_player' do
    erb :single_player
  end

  post '/player' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect to('/single_player_game')
  end

  before do
    @game = Game.instance
  end

  get '/single_player_game' do
    @extended = $extended
    @name = @game.player.name
    erb :single_player_game
  end

  post '/choice' do
    choice = params[:choice]
    @game.player_choice(choice)
    redirect to('/result')
  end

  get '/result' do
    @extended = $extended
    
    @player_choice = @game.player.choice
    @computer_choice = @game.computer_choice
    @winner = @game.decide_winner(@player_choice, @computer_choice)
    erb :result
  end

  # Two player game
  get '/two_player' do
    erb :two_player
  end

  post '/two_players' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @two_game = TwoPlayerGame.create(player1, player2)
    redirect to('/player1_choice')
  end

  before do
    @two_game = TwoPlayerGame.instance
  end

  get '/player1_choice' do
    @player1 = @two_game.player1.name
    erb :player1_choice
  end

  post '/player1_choice' do
    player1 = @two_game.player1
    @two_game.player_choice(player1, params[:player1_choice])
    redirect to('/player2_choice')
  end

  get '/player2_choice' do
    @player2 = @two_game.player2.name
    erb :player2_choice
  end

  post '/player2_choice' do
    player2 = @two_game.player2
    @two_game.player_choice(player2, params[:player2_choice])
    redirect to ('/result2')
  end

  get '/result2' do
    @player1 = @two_game.player1.name
    @player2 = @two_game.player2.name
    @player1_choice = @two_game.player1.choice
    @player2_choice = @two_game.player2.choice
    @winner = @two_game.decide_winner(@player1_choice, @player2_choice)
    erb :result2
  end

  run! if app_file == $0
end
