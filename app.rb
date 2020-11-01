require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/select_move' do
    session[:player] = params[:player]    
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @choice= session[:choice]
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]    
    redirect '/play'
    # erb :picked_choice
  end

  run! if app_file == $0
end
