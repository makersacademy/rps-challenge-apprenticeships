require 'sinatra/base'
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
    erb :play
    redirect '/play'
  end

  get '/play' do 
    @player_name = session[:player_name]
    erb :play
  end

  post '/play' do
  end

  run! if app_file == $0
end
