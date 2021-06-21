require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :sign_in
  end

  post '/start' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play1'
  end

  get '/play1' do
    @player1 = session[:player1]
    erb :play1
  end

  post '/move1' do
    session[:p1_move] = params[:p1_move]
    redirect '/play2'
  end

  get '/play2' do
    @player2 = session[:player2]
    erb :play2
  end

  post '/move2' do
    session[:p2_move] = params[:p2_move]
    redirect '/result'
  end

  get '/result' do
    @player1 = session[:player1]
    @p1_move = session[:p1_move]
    @player2 = session[:player2]
    @p2_move = session[:p2_move]
    erb :result
  end

  run! if app_file == $0
end
