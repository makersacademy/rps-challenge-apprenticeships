require 'sinatra/base'
require_relative './lib/rps'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:name_entry]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @move = session[:move]
    @result = Rps.new.play(@move)
    erb :result
  end

  run! if app_file == $0
end
