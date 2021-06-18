require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/opponent.rb'
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
    player = $player
    opponent = Opponent.new

    @choice = params[:choice]
    player_choice = player.make_choice(@choice)

    $game = Game.new(player, opponent)
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
