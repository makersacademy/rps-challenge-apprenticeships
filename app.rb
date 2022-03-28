require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    session[:player_attack] = params[:player_attack]
    erb :play
  end

  post '/attack' do
    @player_1_name = session[:player_1_name]
    @player_attack = session[:player_attack]
    erb :attack
    redirect '/result'
  end
  
  post '/result' do 
    @player_attack = session[:player_attack]
    @bot_move = bot_choice.new
    winner = game.new
    erb :result
  end
  
  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
