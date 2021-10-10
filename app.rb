require 'sinatra/base'
require './lib/game'
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

  post '/choice' do
    @player_name = session[:player_name]
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player_name = session[:player_name]
    session[:choice]
    @game_result = Game.new.result(session[:choice])
    erb :result
  end

  run! if app_file == $0
end
