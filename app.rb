require 'sinatra/base'

require_relative 'lib/action'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/game'
  end

  get '/game' do
    @player1 = $player1
    @player2 = $player2
    erb :game
  end

  post '/submit' do 
    session[:move1] = params[:choice1]
    session[:move2] = params[:choice2]
    redirect '/result'
  end

  get '/result' do 
    @player1 = $player1
    @player2 = $player2
    @move_player1 = session[:move1]
    @move_player2= session[:move2]
    @result = Action.winner(@move_player1, @move_player2)
    erb :result
  end 
  
  run! if app_file == $0
end
