require_relative 'lib/player'
require_relative 'lib/game'

require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  run! if app_file == $0
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  post '/submit' do 
    session[:move1] = params[:option1]
    session[:move2] = params[:option2]
    redirect '/results'
  end

  get '/results' do 
    @p1move = session[:move1]
    @p2move = session[:move2]
    @player_1 = $player_1
    @player_2 = $player_2
    @results = Game.who_wins(@p1move, @p2move)
    erb :results
  end 
end
