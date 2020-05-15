require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/test' do
    'test page'
  end

  get'/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/rock' do
    "You chose Rock"
  end

  post '/paper' do
    "You chose Paper"
  end

  post '/scissors' do
    "You chose Scissors"
  end

  run! if app_file == $0
end
