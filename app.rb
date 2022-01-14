require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/result' do
    session[:user_choice] = params[:user_choice]
    session[:computer_choice] = ['rock', 'paper', 'scissors'].sample
    redirect '/result'
  end

  get '/result' do
    @user_choice = session[:user_choice]
    @computer_choice = session[:computer_choice]
    @result = Game.new(@user_choice, @computer_choice).result

    erb :result
  end


  run! if app_file == $0
end
