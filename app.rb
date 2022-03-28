require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do
    session[:user_name] = params[:user_name]
    redirect '/play'
  end

  get '/play' do
    @user_name = session[:user_name]
    erb :play
  end

  post '/choice' do
    session[:user_choice] = params[:user_choice]
    session[:computer_choice] = ["ROCK", "PAPER", "SCISSORS"].sample
    redirect :game
  end

  get '/game' do
    @user_name = session[:user_name]
    @user_choice = session[:user_choice]
    @computer_choice = session[:computer_choice]
    erb :game
  end

  run! if app_file == $0
end
