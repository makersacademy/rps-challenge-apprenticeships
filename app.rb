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

  post '/name' do
    session[:name] = params[:name]  
    redirect '/move'
  end

  get '/move' do
    @name = session[:name]
    erb :move
  end

  post '/move' do
    session[:move] = params[:move]
    session[:pc] = Game.new
    redirect '/results'
  end

  get '/results' do
    @move = session[:move]
    @pc = session[:pc]
    erb :results
  end
  run! if app_file == $0
end
