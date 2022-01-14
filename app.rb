require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
    configure :development do
    register Sinatra::Reloader
  end

  post '/log_in' do
  end 

  get '/' do
   erb :index
  end

  post '/log_in' do
  end 

  post '/names' do
  session[:player_1_name] = params[:player_1_name]
  redirect '/play'
  end 

  get '/play' do
  @player_1_name = session[:player_1_name]
  erb :play
  end

    get '/test' do
    'test page'
  end

  run! if app_file == $0
end
