require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/test' do
    'test page'
  end

  get '/name-form' do
    erb :name_form
  end

  post '/register-name' do
    session[:player_name] = params[:player_name]
    redirect '/display-name'
  end

  get '/display-name' do
    @player_name = session[:player_name]
    erb :display_name
  end

  run! if app_file == $0
end
