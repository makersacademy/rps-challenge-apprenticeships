require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/test' do
    'test page'
  end

  get '/' do
    erb :name_form
  end

  post '/register-name' do
    session[:player_name] = params[:player_name]
    redirect '/select-action'
  end

  get '/select-action' do
    @player_name = session[:player_name]
    erb :select_action
  end

  post '/record-action' do
    session[:player_action] = params[:action]
    redirect '/display-action'
  end

  get '/display-action' do
    @player_action = session[:player_action]
    erb :display_action
  end

  run! if app_file == $0
end
