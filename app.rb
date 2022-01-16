require 'sinatra/base'

class RockPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @player_move = session[:player_move]
    @opponent_player_move = session[:opponent_player_move]
    erb :play
  end

  post '/play' do
    session[:player_move] = params[:player_move]
    session[:opponent_player_move] = :rock
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end