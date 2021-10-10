require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  get '/result' do
    @player = session[:player]
    game = Game.new
    @text_result = game.result(session[:choice])
    
    erb :result
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/choose' do
    session[:choice] = params[:move]
    redirect '/result'
  end

  run! if app_file == $0
end
