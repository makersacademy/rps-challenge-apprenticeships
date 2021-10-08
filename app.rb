require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/single_player' do
    erb :single_player_index
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
