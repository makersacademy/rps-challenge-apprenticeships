require 'sinatra/base'
# require './lib/game_logic'
require './lib/player'
require './lib/game'


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
    erb :single_player_index
  end

  post '/player' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect to('/single_player_game')
  end

  get '/two_player' do
    erb :two_player_index
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
