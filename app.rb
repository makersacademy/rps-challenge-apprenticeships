require 'sinatra/base'
require_relative 'lib/player'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:name]
    @move = session[:move]
    @computer_move = session[:computer_move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    session[:computer_move] = :Rock
    redirect '/play'
  end

  get '/move_paper' do
    @player_name = session[:name]
    erb :move_paper
  end

  get '/move_scissors' do
    @player_name = session[:name]
    erb :move_scissors
  end

  run! if app_file == $0
end
