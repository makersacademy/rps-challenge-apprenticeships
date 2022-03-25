require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/weapon'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/playerchoice' do
    session[:choice] = params[:choice]
    redirect '/result' 
  end

  get '/result' do
    @player_choice = session[:choice]
    erb :result
  end

  run! if app_file == $0
end
