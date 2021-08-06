require 'sinatra/base'
require "sinatra/reloader"
require_relative "lib/game.rb"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/rps' do
    session[:name] = params[:name]
    redirect '/rps'
  end
  
  get '/rps' do
    @name = session[:name]
    erb :rps
  end

  post '/result' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @game = Game.new(session[:choice])
    erb :result
  end

  run! if app_file == $0
end
