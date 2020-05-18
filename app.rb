require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb (:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/foyer'
  end

  get '/foyer'do
    @player_name = $player.name
    erb (:foyer)
  end

  post '/choice' do
    $choice = params[:choice]
    redirect '/result'
  end
  #
  # post '/scissors' do
  #   $player.choice("Scissors")
  #   redirect '/result'
  # end
  #
  # post '/paper' do
  #   $player.choice("Paper")
  #   redirect '/result'
  # end

  get '/result' do
    @player_name = $player.name
    @player_move = $choice
    @result = Game.new($choice)
    @computer_move = @result.computer_move
    erb (:result)
  end

  run! if app_file == $0
end
