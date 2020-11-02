require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/select_move' do
    session[:player] = params[:player]    
    redirect '/select_move'
  end

  get '/select_move' do
    @player = session[:player]
    erb :play
  end
  
  post '/play' do
    game = Game.new
    session[:choice] = params[:choice]
    session[:computer_choice] = game.random_choice
    redirect '/play'
  end

  get '/play' do
    game = Game.new
    @player = session[:player]
    @choice= session[:choice]
    @computer_choice = session[:computer_choice]
    @winner = game.winner(@choice, @computer_choice)
    erb :result
  end



  run! if app_file == $0
end
