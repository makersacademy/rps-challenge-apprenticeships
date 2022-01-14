require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do 
    erb :index
  end

  post '/name-registered' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/outcome' do
    @player_choice = params[:player_choice]
    @game_choice = 'Paper'
    erb :outcome
  end

  run! if app_file == $0
end
