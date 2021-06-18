require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
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
    $game = Game.new(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
