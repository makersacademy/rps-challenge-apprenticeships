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

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
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
