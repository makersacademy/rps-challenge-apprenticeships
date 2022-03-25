require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/welcome'
  end

  get '/welcome' do
    @name = session[:name]
    erb :play
  end

  post '/play-game' do
    session[:game] = params[:game]
    redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @user_choice = session[:game]
    @new_game = Game.new
    @computer = @new_game.computer_choice
    erb :game_result
  end

  run! if app_file == $0
end
