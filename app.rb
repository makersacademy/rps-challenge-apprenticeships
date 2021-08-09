require 'sinatra/base'
require 'sinatra/reloader' if development?

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :registername
  end

  post '/name' do
    session[:player_name]= params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player_name]
    erb :play
  end

  get '/test' do
    'test page'
  end



  run! if app_file == $0
end
