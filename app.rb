require 'computer'
require 'player'
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
    @player1 = Player.new(session[:username],params[:weapon])
    @player2 = Computer.new("Computron")
    erb :game_over
  end
  run! if app_file == $0
end
