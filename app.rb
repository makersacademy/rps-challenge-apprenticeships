require 'sinatra'
require "sinatra/reloader" if development?
require_relative './lib/game'


class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end 

  post '/name' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    session[:player1_turn] = true
    redirect to '/play'
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    
    puts session[:player1_turn]
    if session[:player1_turn] == true
      @player = @name1
    else
      @player = @name2
    end

    @message = game(params[:result])
    erb :play
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end

