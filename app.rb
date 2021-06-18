require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :form
  end

  post '/start' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player = session[:player]
    @move = session[:move]
    erb :result
  end
  
  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
