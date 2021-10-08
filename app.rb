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
    mode == "Single Player" ? redirect('/single_player') : redirect('/two_player')
  end

  get '/single_player' do
    erb :single_player
  end

  post '/player' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect to('/single_player_game')
  end

  get '/two_player' do
    erb :two_player
  end

  post '/two_players' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @two_game = TwoPlayerGame.create(player1, player2)
    redirect to('/player1_choice')
  end

  get '/player1_choice' do
    @two_game = TwoPlayerGame.instance
    @player1 = @two_game.player1.name
    @player2 = @two_game.player2.name
    erb :player1_choice
  end

  post '/player1_choice' do
    @two_game = TwoPlayerGame.instance
    player1 = @two_game.player1
    @two_game.player_choice(player1, params[:player1_choice])
    redirect to('/player2_choice')
  end

  get '/player2_choice' do
    @two_game = TwoPlayerGame.instance
    @player2 = @two_game.player2.name
    erb :player2_choice
  end

  post '/player2_choice' do
    @two_game = TwoPlayerGame.instance
    player2 = @two_game.player2
    @two_game.player_choice(player2, params[:player2_choice])
    redirect to ('/result_2')
  end

  get '/result_2' do
    @two_game = TwoPlayerGame.instance
    @player1 = @two_game.player1.name
    @player2 = @two_game.player2.name
    @player1_choice = @two_game.player1.choice
    @player2_choice = @two_game.player2.choice
    @winner = @two_game.decide_winner(@player1_choice, @player2_choice)
    erb :result_2
  end

  before do
    @game = Game.instance
  end

  get '/single_player_game' do
    @name = @game.player.name
    erb :single_player_game
  end

  post '/choice' do
    choice = params[:choice]
    @game.player_choice(choice)
    redirect to('/result')
  end

  get '/result' do
    @player_choice = @game.player.choice
    @computer_choice = @game.computer_choice
    @winner = @game.decide_winner(@player_choice, @computer_choice)
    erb :result
  end

  run! if app_file == $0
end
