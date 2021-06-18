require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/mode-select' do
    choice = params[:name]
    redirect('/two-player') if choice == "2P"
    redirect('/one-player')
  end

  get '/one-player' do
    erb :singleplayermenu
  end

  post '/name-submit' do
    session[:name] = params[:name]
    redirect('/welcome')
  end

  get '/welcome' do
    @name = session[:name]
    erb :welcome_screen
  end


  run! if app_file == $0
end
