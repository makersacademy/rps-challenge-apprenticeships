require 'sinatra/base'
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

    rules = { 'rock' => ['scissors', 'paper'], 'paper' => ['rock', 'scissors'], 'scissors' => ['paper', 'rock'] }

    if @computer_choice == rules[@user_choice][0]
      @result = 'Result: You Won'
      erb :result
    elsif @computer_choice == rules[@user_choice][1]
      @result = 'Result: You Lost'
      erb :result
    elsif @computer_choice == @user_choice
      @result = 'Result: You Drew'
      erb :result
    end
  end


  run! if app_file == $0
end
