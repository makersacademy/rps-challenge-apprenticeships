require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :sign_in
  end

  post '/start' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player = session[:player]
    @move = session[:move]
    @comp_move = ['rock', 'paper', 'scissors'].sample
    erb :result
  end

  run! if app_file == $0
end
