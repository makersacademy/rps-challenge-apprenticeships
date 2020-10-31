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
    erb :play
  end

  post '/picked_choice' do
    session[:rock] = params[:rock]    
    redirect '/picked_choice'
    # erb :picked_choice
  end

  run! if app_file == $0
end
