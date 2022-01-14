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
    redirect '/welcome'
  end

  get '/welcome' do
    @player_name = session[:player_name]
    erb :welcome
  end

  run! if app_file == $0
end
