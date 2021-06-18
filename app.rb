require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer-choice.rb'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do
    'test page'
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/startgame'
  end

  get '/startgame' do
    @player = $player
    erb :start_game
  end

  post '/choices' do
    @choice = params[:choice]

    player = $player
    player_choice = player.make_choice(@choice)

    opponent = ComputerChoice.new
    comp_choice = opponent.comp_choice

    $game = Game.new(player.choice, comp_choice)
    $result = $game.result

    redirect '/result'
  end

  get '/result' do
    @game = $game
    @result = $result
    erb :result
  end

  run! if app_file == $0
end
