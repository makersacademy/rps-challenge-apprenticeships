require 'sinatra/base'
require './lib/rps_game'
require './lib/player'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do 
    session[:player_1_name] = params[:player_1_name]
    redirect '/one_player_game'
  end

  get '/one_player_game' do
    @name = session[:player_1_name]
    erb :game
  end

  post '/choice' do
    session[:player_1] = Player.new(session[:player_1_name], params[:weapon])
    session[:player_2] = Player.new
    redirect '/result'
  end

  get '/result' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @result = RPSGame.new(@player_1.choice, @player_2.choice).result
    erb :result
  end

  post '/play_again' do
    @name = session[:name]
    redirect '/one_player_game'
  end

  get '/two_player_game' do
    session[:multiplayer] = true
    erb :two_player_game
  end

  post '/player_1_name' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/player_1_choose'
  end

  get '/player_1_choose' do
    @name = session[:player_1_name]
    erb :game
  end
  
  post '/player_1_choice' do
    session[:player_1] = Player.new(session[:player_1_name], params[:weapon])
    redirect '/player_2_choose'
  end

  get '/player_2_choose' do
    @name = session[:player_2_name]
    erb :game
  end

  post '/player_2_choice' do
    session[:player_2] = Player.new(session[:player_2_name], params[:weapon])
    redirect '/result'
  end

  run! if app_file == $0
end
