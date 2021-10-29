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
    @weapon_1 = params[:weapon]
    @username_1 = session[:username]
    erb :game_over
  end
  run! if app_file == $0
end
