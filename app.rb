require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/player' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect to('/game')
  end

  get '/game' do
    @name = $game.player.name
    erb :game
  end

  post '/choice' do
    choice = params[:choice]
    $game.player_choice(choice)
    redirect to('/result')
  end

  get '/result' do
    @player_choice = $game.player.choice
    @computer_choice = $game.computer_choice
    erb :result
  end

  run! if app_file == $0
end
