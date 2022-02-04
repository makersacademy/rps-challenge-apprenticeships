require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/test' do
    'test page'
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/battle' do
    @player_name = session[:player_name]
    @player_choice = params[:button1] || params[:button2] || params[:button3]
    erb :battle
  end

  run! if app_file == $0

end
