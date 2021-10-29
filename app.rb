require 'computer'
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
    @weapon1 = params[:weapon]
    @username1 = session[:username]
    @weapon2 = Computer.new.weapon
    @username2 = "Computron"
    erb :game_over
  end
  run! if app_file == $0
end
