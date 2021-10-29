require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end
  get '/' do
    erb :index
  end
  get '/play' do
    session[:username] = params[:user_name]
    @username = session[:username]
    erb :play
  end
  get '/game_over' do
    p params
    @username = session[:username]
    @weapon = params[:weapon]
    erb :game_over
  end
  run! if app_file == $0
end
