require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
    configure :development do
    register Sinatra::Reloader
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

    get '/test' do
    'test page'
  end

  run! if app_file == $0
end
