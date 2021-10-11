# in app.rb

require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions
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
    @option = session[:option]
    @computer_chose = session[:computer_chose]
    erb :play
  end

  post '/play' do
    session[:option] = params[:option]
    session[:computer_chose] = :Rock 
    redirect '/play'
  end 
  # start the server if ruby file executed directly
  run! if app_file == $0
end