# in app.rb

require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :session
  configure :development do
  register Sinatra::Reloader
  end

  get '/test' do
    'Hello'
  end 

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end