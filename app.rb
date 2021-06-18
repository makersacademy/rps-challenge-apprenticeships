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
    @player1 = session[:name]
    @player2 = "Computer"
    erb :welcome_screen
  end

  get '/game' do
    erb :game
  end

  post '/calculate-result' do

  end

  get '/results' do

  end


  run! if app_file == $0
end
