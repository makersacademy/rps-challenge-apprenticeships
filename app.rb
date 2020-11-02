require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "there be dragons"

  get '/' do
    erb :index
  end

  post '/Home' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/Player1'
  end

  get '/Player1' do
    @player1 = Player.new(session[:player1])
    @player2 = Player.new(session[:player2])
    erb :play1
  end

  post '/player1_choice' do
    session[:Rock] = params[:Rock]
    session[:Paper] = params[:Paper]
    session[:Scissors] = params[:Scissors]
    redirect '/Player2'
  end

  get '/Player2' do
    @player2 = Player.new(session[:player2])
    erb :play2
  end

  post '/player2_choice' do
    session[:Rock1] = params[:Rock1]
    session[:Paper1] = params[:Paper1]
    session[:Scissors1] = params[:Scissors1]
    redirect '/choices'
  end

  get '/choices' do
    @player1 = Player.new(session[:player1])
    @player1.rock = session[:Rock]
    @player1.paper = session[:Paper]
    @player1.scissors = session[:Scissors]
    @player2 = Player.new(session[:player2])
    @player2.rock = session[:Rock1]
    @player2.paper = session[:Paper1]
    @player2.scissors = session[:Scissors1]
    @Game = Game.new
    erb :result
  end


  run! if app_file == $0
end
