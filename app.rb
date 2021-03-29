require 'sinatra/base'
require 'sinatra'
require "sinatra/reloader" if development?

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
      enable :sessions
  end

  get '/test' do
    'test page'
  end

  get '/' do
    "Rock, Paper, Scissors"
    erb :index
  end

  post '/name' do 
    session[:username] = params[:username]
    redirect '/play'
  end

  get '/play' do 
    session[:username] = params[:username]
    session[:player_move] = params[:player_move]
    erb :play
  end

  post '/result' do 
    erb :result
  end

  run! if app_file == $0
end
