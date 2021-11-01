require 'computer'
require 'player'
require 'sinatra/base'
require 'game'

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
    @player1 = Player.new(session[:username],params[:weapon].to_sym)
    @player2 = Computer.new("Computron")
    @game = Game.new(@player1, @player2)
    erb :game_over
  end

  run! if app_file == $0
end
