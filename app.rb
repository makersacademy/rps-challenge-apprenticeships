require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/test' do
    'test page'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @move = session[:move]
    @game_move = session[:game_move]
    erb :play
  end

  post '/register' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  post '/play' do
    session[:move] = params[:move]
    session[:game_move] = :Scissors
    redirect '/play'
  end


  run! if app_file == $0
end
