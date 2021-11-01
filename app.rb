require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end
  
  get '/play' do
    @name = session[:player_name]
    erb :play
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/game'
  end

  get '/game' do
    @choice = session[:player_choice]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
