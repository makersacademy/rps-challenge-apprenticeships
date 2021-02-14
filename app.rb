require 'sinatra/base'
require './lib/rps_game'
require './lib/computer_choice'
require './lib/player'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do 
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/choice' do
    session[:player_1] = Player.new(session[:name], params[:weapon])
    session[:player_2] = Player.new
    redirect '/result'
  end

  get '/result' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @result = RPSGame.new(@player_1.choice,@player_2.choice).result
    erb :result
  end

  post '/play_again' do
    @name = session[:name]
    redirect '/game'
  end

  run! if app_file == $0
end
