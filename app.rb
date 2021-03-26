require 'sinatra/base'
require 'sinatra'
require "sinatra/reloader" if development?

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    "Rock, Paper, Scissors"
    erb :index
  end

  post '/name' do 
    @username = params[:username]
    erb :play
  end

  run! if app_file == $0
end
