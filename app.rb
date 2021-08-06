require 'sinatra/base'

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
    session[:value] = params[:value]
    redirect '/result'
  end

  get '/result' do
    @move = session[:value]
  end

  run! if app_file == $0
end
