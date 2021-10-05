require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  get '/game' do
    erb :game
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @move = session[:move]
    game = Game.new
    @computer_move = game.random_move
    erb :result
  end

  run! if app_file == $0
end
