require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

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
    # this is the point where we need to take our param to logic
    "You Won"
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
