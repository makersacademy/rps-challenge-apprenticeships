require 'sinatra/base'
require 'sinatra/reloader'

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
  redirect '/play'
  end 

  get '/play' do
  @player_name = session[:player_name]
  @emoji = session[:emoji]
  @computer_emoji = session[:computer_emoji]
  p params
  erb :play
  end

  post '/play' do
    session[:emoji] = params [:emoji]
    session[:computer_emoji] = params [:computer_emoji]
    redirect '/play'
  end





  run! if app_file == $0
end
