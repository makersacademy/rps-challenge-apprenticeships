require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect to '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/game' do
    session[:player_weapon] = params[:player_weapon]
    redirect to '/result'
  end

  get '/result' do
    @player_weapon = session[:player_weapon]
    @game = Game.new(@player_weapon)
    erb :result
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
